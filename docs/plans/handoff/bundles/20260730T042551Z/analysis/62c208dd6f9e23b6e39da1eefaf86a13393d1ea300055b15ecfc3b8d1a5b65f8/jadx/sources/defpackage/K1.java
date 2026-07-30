package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import com.joeykrim.rootcheck.R;
import defpackage.Nz;

/* loaded from: classes.dex */
public final class K1 {

    /* renamed from: do, reason: not valid java name */
    public static K1 f1739do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final PorterDuff.Mode f1740do = PorterDuff.Mode.SRC_IN;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Nz f1741do;

    /* renamed from: K1$do, reason: invalid class name */
    public class Cdo implements Nz.Ccase {

        /* renamed from: do, reason: not valid java name */
        public final int[] f1743do = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: if, reason: not valid java name */
        public final int[] f1745if = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: for, reason: not valid java name */
        public final int[] f1744for = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

        /* renamed from: new, reason: not valid java name */
        public final int[] f1746new = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: try, reason: not valid java name */
        public final int[] f1747try = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

        /* renamed from: case, reason: not valid java name */
        public final int[] f1742case = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

        /* renamed from: do, reason: not valid java name */
        public static boolean m1106do(int i, int[] iArr) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public static LayerDrawable m1107for(Nz nz, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable m1563case = nz.m1563case(context, R.drawable.abc_star_black_48dp);
            Drawable m1563case2 = nz.m1563case(context, R.drawable.abc_star_half_black_48dp);
            if ((m1563case instanceof BitmapDrawable) && m1563case.getIntrinsicWidth() == dimensionPixelSize && m1563case.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) m1563case;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                m1563case.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m1563case.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((m1563case2 instanceof BitmapDrawable) && m1563case2.getIntrinsicWidth() == dimensionPixelSize && m1563case2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) m1563case2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                m1563case2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                m1563case2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.secondaryProgress);
            layerDrawable.setId(2, android.R.id.progress);
            return layerDrawable;
        }

        /* renamed from: if, reason: not valid java name */
        public static ColorStateList m1108if(Context context, int i) {
            int m4823for = C0742bH.m4823for(context, R.attr.colorControlHighlight);
            return new ColorStateList(new int[][]{C0742bH.f8357do, C0742bH.f8358for, C0742bH.f8359if, C0742bH.f8361try}, new int[]{C0742bH.m4824if(context, R.attr.colorButtonNormal), G8.m711new(m4823for, i), G8.m711new(m4823for, i), i});
        }

        /* renamed from: try, reason: not valid java name */
        public static void m1109try(Drawable drawable, int i, PorterDuff.Mode mode) {
            int[] iArr = C0470Re.f3209do;
            Drawable mutate = drawable.mutate();
            if (mode == null) {
                mode = K1.f1740do;
            }
            mutate.setColorFilter(K1.m1102for(i, mode));
        }

        /* renamed from: new, reason: not valid java name */
        public final ColorStateList m1110new(Context context, int i) {
            if (i == R.drawable.abc_edit_text_material) {
                return C0466Ra.getColorStateList(context, R.color.abc_tint_edittext);
            }
            if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                return C0466Ra.getColorStateList(context, R.color.abc_tint_switch_track);
            }
            if (i != R.drawable.abc_switch_thumb_material) {
                if (i == R.drawable.abc_btn_default_mtrl_shape) {
                    return m1108if(context, C0742bH.m4823for(context, R.attr.colorButtonNormal));
                }
                if (i == R.drawable.abc_btn_borderless_material) {
                    return m1108if(context, 0);
                }
                if (i == R.drawable.abc_btn_colored_material) {
                    return m1108if(context, C0742bH.m4823for(context, R.attr.colorAccent));
                }
                if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                    return C0466Ra.getColorStateList(context, R.color.abc_tint_spinner);
                }
                if (m1106do(i, this.f1745if)) {
                    return C0742bH.m4825new(context, R.attr.colorControlNormal);
                }
                if (m1106do(i, this.f1747try)) {
                    return C0466Ra.getColorStateList(context, R.color.abc_tint_default);
                }
                if (m1106do(i, this.f1742case)) {
                    return C0466Ra.getColorStateList(context, R.color.abc_tint_btn_checkable);
                }
                if (i == R.drawable.abc_seekbar_thumb_material) {
                    return C0466Ra.getColorStateList(context, R.color.abc_tint_seek_thumb);
                }
                return null;
            }
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList m4825new = C0742bH.m4825new(context, R.attr.colorSwitchThumbNormal);
            if (m4825new == null || !m4825new.isStateful()) {
                iArr[0] = C0742bH.f8357do;
                iArr2[0] = C0742bH.m4824if(context, R.attr.colorSwitchThumbNormal);
                iArr[1] = C0742bH.f8360new;
                iArr2[1] = C0742bH.m4823for(context, R.attr.colorControlActivated);
                iArr[2] = C0742bH.f8361try;
                iArr2[2] = C0742bH.m4823for(context, R.attr.colorSwitchThumbNormal);
            } else {
                int[] iArr3 = C0742bH.f8357do;
                iArr[0] = iArr3;
                iArr2[0] = m4825new.getColorForState(iArr3, 0);
                iArr[1] = C0742bH.f8360new;
                iArr2[1] = C0742bH.m4823for(context, R.attr.colorControlActivated);
                iArr[2] = C0742bH.f8361try;
                iArr2[2] = m4825new.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized K1 m1101do() {
        K1 k1;
        synchronized (K1.class) {
            if (f1739do == null) {
                m1103new();
            }
            k1 = f1739do;
        }
        return k1;
    }

    /* renamed from: for, reason: not valid java name */
    public static synchronized PorterDuffColorFilter m1102for(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m1561goto;
        synchronized (K1.class) {
            m1561goto = Nz.m1561goto(i, mode);
        }
        return m1561goto;
    }

    /* renamed from: new, reason: not valid java name */
    public static synchronized void m1103new() {
        synchronized (K1.class) {
            if (f1739do == null) {
                K1 k1 = new K1();
                f1739do = k1;
                k1.f1741do = Nz.m1562new();
                f1739do.f1741do.m1565class(new Cdo());
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m1104try(Drawable drawable, C3852vH c3852vH, int[] iArr) {
        PorterDuff.Mode mode = Nz.f2456do;
        int[] state = drawable.getState();
        int[] iArr2 = C0470Re.f3209do;
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = c3852vH.f16057if;
            if (z || c3852vH.f16056do) {
                PorterDuffColorFilter porterDuffColorFilter = null;
                ColorStateList colorStateList = z ? c3852vH.f16054do : null;
                PorterDuff.Mode mode2 = c3852vH.f16056do ? c3852vH.f16055do : Nz.f2456do;
                if (colorStateList != null && mode2 != null) {
                    porterDuffColorFilter = Nz.m1561goto(colorStateList.getColorForState(iArr, 0), mode2);
                }
                drawable.setColorFilter(porterDuffColorFilter);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized Drawable m1105if(Context context, int i) {
        return this.f1741do.m1563case(context, i);
    }
}
