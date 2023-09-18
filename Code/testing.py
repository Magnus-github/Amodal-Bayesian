import matplotlib.pyplot as plt
from torchvision import transforms
from PIL import Image


DATA_FOLDER = "/local_storage/users/tibbe/Dataset/kitti/"


def main():
    print("Hello World!!!")
    img_file = DATA_FOLDER + "training/images/000001.jpg"
    img = Image.open(img_file)
    transform = transforms.Compose([
        transforms.Resize(256,256),
        transforms.ToTensor()
    ])
    img_tensor = transform(img)

if __name__ == "__main__":
    main()
