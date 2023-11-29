import pymeshlab
file1 = open('pythonArgs.txt', 'r')
arguments = file1.readlines()
path = arguments[0].replace("\n", "")
minZ = arguments[1].replace("\n", "")
maxZ = arguments[2].replace("\n", "")
side = arguments[3]
ms = pymeshlab.MeshSet()
ms.load_new_mesh(path + side +'_dist_2_bottom_rotated_moved.stl')
headID = ms.current_mesh_id()
ms.load_new_mesh(path + side + '_dist_2_top_moved.stl')
proxID = ms.current_mesh_id()
ms.generate_boolean_union(first_mesh=headID, second_mesh=proxID)
print(ms.number_meshes())
unionID = ms.current_mesh_id()
ms.compute_selection_by_condition_per_face(condselect='(z0 > ' + str(minZ) + ' && z0 < ' + str(maxZ) + ')')
print("selected faces=" + str(ms.current_mesh().selected_face_number()))

ms.apply_coord_laplacian_smoothing(stepsmoothnum=25, boundary=False, cotangentweight=False, selected=True)

ms.generate_boolean_intersection(first_mesh=headID, second_mesh=unionID)


ms.compute_selection_by_non_manifold_edges_per_face()
print("non manifold edges = " + str(ms.current_mesh().selected_face_number()))
ms.apply_selection_dilatation()
print("non manifold edges erweitert = " + str(ms.current_mesh().selected_face_number()))
ms.apply_selection_dilatation()
print("non manifold edges erweitert x 2 = " + str(ms.current_mesh().selected_face_number()))
ms.apply_coord_laplacian_smoothing(stepsmoothnum=3, boundary=True, cotangentweight=True, selected=True)

ms.compute_selection_bad_faces(usear=True, aratio=0.02)
ms.meshing_remove_selected_vertices_and_faces()
p1 = pymeshlab.Percentage(1)
ms.meshing_decimation_clustering(threshold=p1)

ms.save_current_mesh(path + side + '_dist_2_bottom_moved_smoothed.stl')
ms.generate_boolean_intersection(first_mesh=proxID, second_mesh=unionID)
proxID = ms.current_mesh_id()
ms.generate_boolean_xor(first_mesh=headID, second_mesh=proxID)
xor = ms.current_mesh_id()
ms.generate_boolean_difference(first_mesh=xor, second_mesh=headID)
ms.meshing_remove_connected_component_by_diameter(mincomponentdiag=pymeshlab.AbsoluteValue(30))

ms.compute_selection_by_non_manifold_edges_per_face()
print("non manifold edges = " + str(ms.current_mesh().selected_face_number()))
ms.apply_selection_dilatation()
print("non manifold edges erweitert = " + str(ms.current_mesh().selected_face_number()))
ms.apply_selection_dilatation()
print("non manifold edges erweitert x 2 = " + str(ms.current_mesh().selected_face_number()))
ms.apply_coord_laplacian_smoothing(stepsmoothnum=3, boundary=True, cotangentweight=True, selected=True)

ms.compute_selection_bad_faces(usear=True, aratio=0.02)
ms.meshing_remove_selected_vertices_and_faces()
ms.meshing_decimation_clustering(threshold=p1)

ms.save_current_mesh(path + side + '_dist_2_top_moved_smoothed.stl')
print(ms.number_meshes())
print('finished')