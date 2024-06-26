--checks for the lifes[an of bands with a style named glam rock.
SELECT band_name,
    CASE 
    WHEN split > 2022 OR split=0 OR split IS NULL THEN 2022-formed
    ELSE split-formed
    END AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, '')) > 0 
    ORDER BY lifespan DESC;
