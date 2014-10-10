
/*
 * ThirdScene
 * Created by Eqela Studio 2.0b7.4
 */

public class ThirdScene : SEScene
{
	SESprite mScene;
	SESprite sScene;
	SESprite frtScene;
	SESprite fftScene;
	SESprite text;
		
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("black"), get_scene_width(), get_scene_height()));
		mScene = add_sprite_for_color(Color.instance("white"),0.5*get_scene_width(),0.125*get_scene_height());
		mScene.move(0.5*get_scene_width(),0.5*get_scene_height());
		sScene = add_sprite_for_color(Color.instance("red"),0.5*get_scene_width(),0.125*get_scene_height());
		sScene.move(0.5*get_scene_width(),0.625*get_scene_height());
		frtScene = add_sprite_for_color(Color.instance("blue"),0.5*get_scene_width(),0.125*get_scene_height());
		frtScene.move(0.5*get_scene_width(),0.75*get_scene_height());
		fftScene = add_sprite_for_color(Color.instance("green"),0.5*get_scene_width(),0.125*get_scene_height());
		fftScene.move(0.5*get_scene_width(),0.875*get_scene_height());
	}

	public void on_pointer_press(SEPointerInfo ptr) {
		if(ptr.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.125*get_scene_height())) {
			base.on_pointer_press(ptr);
			switch_scene(new MainScene());		
		}

		if(ptr.is_inside(0.5*get_scene_width(),0.63*get_scene_height(),0.80*get_scene_width(),0.137*get_scene_height())) {
			base.on_pointer_press(ptr);
			switch_scene(new SecondScene());
		}
		
		if(ptr.is_inside(0.5*get_scene_width(),0.73*get_scene_height(),0.80*get_scene_width(),0.147*get_scene_height())) {
			base.on_pointer_press(ptr);
			switch_scene(new FourthScene());
		}

		if(ptr.is_inside(0.5*get_scene_width(),0.87*get_scene_height(),0.80*get_scene_width(),0.157*get_scene_height())) {
			base.on_pointer_press(ptr);
			switch_scene(new FifthScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
