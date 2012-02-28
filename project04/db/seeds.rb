# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
15.times do
    Article.create(title: 'Lorem Ipsum', author: 'Marcus Tullius Cicero', body: %{<p class="articlebody">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae nibh eu massa elementum condimentum quis vitae eros. Duis quis quam odio. Etiam molestie congue sapien, vel suscipit massa eleifend eu. In a nulla ac nulla dapibus sodales. Aenean rutrum mauris vel libero semper non blandit augue mollis. Mauris sed ornare velit. Duis euismod tincidunt nisi, non faucibus sem fermentum malesuada. Curabitur condimentum sagittis feugiat. Aliquam justo velit, interdum eget euismod ut, convallis nec risus. Fusce sed ligula at odio convallis adipiscing.</p>

<p class="articlebody">Duis sollicitudin tempus malesuada. Proin et mauris diam, et consectetur libero. Vivamus eget erat dui, vel sagittis magna. Sed tristique, nunc sit amet consequat imperdiet, magna neque mattis velit, non vehicula nisl nibh nec lectus. Sed nec arcu velit. In mollis faucibus molestie. Praesent quam turpis, luctus ac lobortis in, scelerisque congue enim. Vestibulum id iaculis sem. Quisque accumsan nisi sed neque vehicula cursus. Phasellus ornare sagittis purus, non egestas sapien ultrices quis.</p>

<p class="articlebody">Integer quis augue libero. Sed placerat faucibus eros at imperdiet. Curabitur ut orci non ligula hendrerit consectetur. Quisque vitae arcu quis arcu dictum blandit. Vivamus eu massa nisl. Suspendisse id elit magna, non vestibulum orci. Donec nunc augue, pharetra ut bibendum vitae, dignissim non lectus. Integer dignissim pellentesque dui, id laoreet odio semper sed. Phasellus ac lacus ipsum, sollicitudin pulvinar sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo turpis at nisl consequat posuere. Cras in pretium sapien. Fusce in sapien dolor, sit amet rhoncus nunc. Aenean felis ligula, imperdiet eu suscipit vel, tincidunt eu felis. Donec pretium, elit id cursus malesuada, magna felis convallis erat, eget pulvinar neque augue a felis.</p>

<p class="articlebody">Proin consequat turpis id orci lacinia eget blandit nibh ultrices. Nulla eu ultricies nisi. Ut vehicula urna felis, nec tristique neque. Aliquam rhoncus euismod hendrerit. Curabitur interdum ullamcorper nulla, sed aliquet est varius id. Phasellus aliquet aliquam mi ultrices tempor. Aliquam consequat sem nec nisi iaculis tristique. Pellentesque a sapien dolor. Morbi condimentum enim eu nulla gravida tristique.</p>

<p class="articlebody">Quisque nunc purus, consequat non varius pulvinar, convallis molestie mauris. Curabitur cursus pellentesque egestas. Sed sed justo mi. Maecenas fermentum mauris sed nulla aliquet non egestas metus iaculis. Nulla vitae felis sapien. Etiam in leo sodales mi vestibulum consectetur. Donec fermentum tempus augue eu pulvinar. Aenean malesuada tortor mi. Proin pretium, eros ut elementum placerat, nulla nisi luctus leo, fringilla consequat velit justo sit amet ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque interdum mi nec nisl hendrerit pharetra. Pellentesque accumsan elit a sem tristique porta. Integer libero odio, convallis eget dictum vel, sollicitudin eu odio. Nullam congue dapibus auctor.</p>})
end
