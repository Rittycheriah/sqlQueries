SELECT COUNT(plyTRX.TrackId), ply.Name, plyTRX.PlaylistId AS ply_TID, ply.PlaylistId AS pp_TID, plyTRX.TrackId FROM Playlist ply JOIN PlaylistTrack plyTRX on ply_TID=pp_TID GROUP BY ply_TID;
