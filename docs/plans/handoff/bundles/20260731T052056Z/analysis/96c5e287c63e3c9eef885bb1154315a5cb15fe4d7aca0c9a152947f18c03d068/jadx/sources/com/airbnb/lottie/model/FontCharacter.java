package com.airbnb.lottie.model;

import androidx.compose.animation.core.Animation;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FontCharacter {
    public final char character;
    public final String fontFamily;
    public final ArrayList shapes;
    public final String style;
    public final double width;

    public FontCharacter(ArrayList arrayList, char c, double d, String str, String str2) {
        this.shapes = arrayList;
        this.character = c;
        this.width = d;
        this.style = str;
        this.fontFamily = str2;
    }

    public static int hashFor(char c, String str, String str2) {
        return str2.hashCode() + Animation.CC.m(c * 31, 31, str);
    }

    public final int hashCode() {
        return hashFor(this.character, this.fontFamily, this.style);
    }
}
