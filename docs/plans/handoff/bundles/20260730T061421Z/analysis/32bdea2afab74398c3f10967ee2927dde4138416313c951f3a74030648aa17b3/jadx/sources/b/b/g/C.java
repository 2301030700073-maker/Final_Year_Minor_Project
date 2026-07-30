package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class C {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f429a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: b, reason: collision with root package name */
    public final int[] f430b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: c, reason: collision with root package name */
    public final int[] f431c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl_dark, R.drawable.abc_text_select_handle_middle_mtrl_dark, R.drawable.abc_text_select_handle_right_mtrl_dark, R.drawable.abc_text_select_handle_left_mtrl_light, R.drawable.abc_text_select_handle_middle_mtrl_light, R.drawable.abc_text_select_handle_right_mtrl_light};

    /* renamed from: d, reason: collision with root package name */
    public final int[] f432d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
    public final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
    public final int[] f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

    public final boolean a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public final ColorStateList b(Context context, int i) {
        int c2 = V0.c(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{V0.f488b, V0.f490d, V0.f489c, V0.f}, new int[]{V0.b(context, R.attr.colorButtonNormal), b.e.d.a.f(c2, i), b.e.d.a.f(c2, i), i});
    }

    public ColorStateList c(Context context, int i) {
        if (i == R.drawable.abc_edit_text_material) {
            return b.e.b.b.d(context, R.color.abc_tint_edittext);
        }
        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
            return b.e.b.b.d(context, R.color.abc_tint_switch_track);
        }
        if (i == R.drawable.abc_switch_thumb_material) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList d2 = V0.d(context, R.attr.colorSwitchThumbNormal);
            if (d2 == null || !d2.isStateful()) {
                iArr[0] = V0.f488b;
                iArr2[0] = V0.b(context, R.attr.colorSwitchThumbNormal);
                iArr[1] = V0.e;
                iArr2[1] = V0.c(context, R.attr.colorControlActivated);
                iArr[2] = V0.f;
                iArr2[2] = V0.c(context, R.attr.colorSwitchThumbNormal);
            } else {
                iArr[0] = V0.f488b;
                iArr2[0] = d2.getColorForState(iArr[0], 0);
                iArr[1] = V0.e;
                iArr2[1] = V0.c(context, R.attr.colorControlActivated);
                iArr[2] = V0.f;
                iArr2[2] = d2.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }
        if (i == R.drawable.abc_btn_default_mtrl_shape) {
            return b(context, V0.c(context, R.attr.colorButtonNormal));
        }
        if (i == R.drawable.abc_btn_borderless_material) {
            return b(context, 0);
        }
        if (i == R.drawable.abc_btn_colored_material) {
            return b(context, V0.c(context, R.attr.colorAccent));
        }
        if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
            return b.e.b.b.d(context, R.color.abc_tint_spinner);
        }
        if (a(this.f430b, i)) {
            return V0.d(context, R.attr.colorControlNormal);
        }
        if (a(this.e, i)) {
            return b.e.b.b.d(context, R.color.abc_tint_default);
        }
        if (a(this.f, i)) {
            return b.e.b.b.d(context, R.color.abc_tint_btn_checkable);
        }
        if (i == R.drawable.abc_seekbar_thumb_material) {
            return b.e.b.b.d(context, R.color.abc_tint_seek_thumb);
        }
        return null;
    }

    public final void d(Drawable drawable, int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter g;
        if (C0055j0.a(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = D.f433b;
        }
        synchronized (D.class) {
            g = E0.g(i, mode);
        }
        drawable.setColorFilter(g);
    }
}
