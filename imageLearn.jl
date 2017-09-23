Pkg.add("Images")
Pkg.add("DataFrames")
using Images
using DataFrames

images = imread(nameFile)
temp = float32sc(img)
if ndims(temp) == 3
  temp = mean(temp.data, 1)
end
x[i, :] = reshape(temp, 1 imageSize)

function read_data(typeData, labelsInfo, imageSize, path)
  x = zeros(size(labelsInfo, 1), imageSize)
  for(index, idImage) in enumerate(labelsInfo["ID"])
    nameFile = "$(path)/$(typeData)Resized/$(idImage).Bmp
    img = imread(nameFile)

    temp = float32sc(img)

    if ndims(temp) == 3
      temp = mean(temp.data, 1)
    end
 
    x[index, :] = reshape(temp, 1, imageSize)
  end
  return x
end



