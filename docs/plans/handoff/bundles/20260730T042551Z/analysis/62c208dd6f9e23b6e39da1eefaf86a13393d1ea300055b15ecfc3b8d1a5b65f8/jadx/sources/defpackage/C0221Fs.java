package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.MenuItem;

/* renamed from: Fs, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0221Fs {
    /* renamed from: break, reason: not valid java name */
    public static MenuItem m635break(MenuItem menuItem, PorterDuff.Mode mode) {
        MenuItem iconTintMode;
        iconTintMode = menuItem.setIconTintMode(mode);
        return iconTintMode;
    }

    /* renamed from: case, reason: not valid java name */
    public static CharSequence m636case(MenuItem menuItem) {
        CharSequence tooltipText;
        tooltipText = menuItem.getTooltipText();
        return tooltipText;
    }

    /* renamed from: catch, reason: not valid java name */
    public static MenuItem m637catch(MenuItem menuItem, char c, int i) {
        MenuItem numericShortcut;
        numericShortcut = menuItem.setNumericShortcut(c, i);
        return numericShortcut;
    }

    /* renamed from: class, reason: not valid java name */
    public static MenuItem m638class(MenuItem menuItem, char c, char c2, int i, int i2) {
        MenuItem shortcut;
        shortcut = menuItem.setShortcut(c, c2, i, i2);
        return shortcut;
    }

    /* renamed from: const, reason: not valid java name */
    public static MenuItem m639const(MenuItem menuItem, CharSequence charSequence) {
        MenuItem tooltipText;
        tooltipText = menuItem.setTooltipText(charSequence);
        return tooltipText;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m640do(MenuItem menuItem) {
        int alphabeticModifiers;
        alphabeticModifiers = menuItem.getAlphabeticModifiers();
        return alphabeticModifiers;
    }

    /* renamed from: else, reason: not valid java name */
    public static MenuItem m641else(MenuItem menuItem, char c, int i) {
        MenuItem alphabeticShortcut;
        alphabeticShortcut = menuItem.setAlphabeticShortcut(c, i);
        return alphabeticShortcut;
    }

    /* renamed from: for, reason: not valid java name */
    public static ColorStateList m642for(MenuItem menuItem) {
        ColorStateList iconTintList;
        iconTintList = menuItem.getIconTintList();
        return iconTintList;
    }

    /* renamed from: goto, reason: not valid java name */
    public static MenuItem m643goto(MenuItem menuItem, CharSequence charSequence) {
        MenuItem contentDescription;
        contentDescription = menuItem.setContentDescription(charSequence);
        return contentDescription;
    }

    /* renamed from: if, reason: not valid java name */
    public static CharSequence m644if(MenuItem menuItem) {
        CharSequence contentDescription;
        contentDescription = menuItem.getContentDescription();
        return contentDescription;
    }

    /* renamed from: new, reason: not valid java name */
    public static PorterDuff.Mode m645new(MenuItem menuItem) {
        PorterDuff.Mode iconTintMode;
        iconTintMode = menuItem.getIconTintMode();
        return iconTintMode;
    }

    /* renamed from: this, reason: not valid java name */
    public static MenuItem m646this(MenuItem menuItem, ColorStateList colorStateList) {
        MenuItem iconTintList;
        iconTintList = menuItem.setIconTintList(colorStateList);
        return iconTintList;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m647try(MenuItem menuItem) {
        int numericModifiers;
        numericModifiers = menuItem.getNumericModifiers();
        return numericModifiers;
    }
}
