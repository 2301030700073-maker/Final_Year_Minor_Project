package com.airbnb.lottie.model;

import android.graphics.PointF;
import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DocumentData {
    public float baselineShift;
    public PointF boxPosition;
    public PointF boxSize;
    public int color;
    public String fontName;
    public Justification justification;
    public float lineHeight;
    public float size;
    public int strokeColor;
    public boolean strokeOverFill;
    public float strokeWidth;
    public String text;
    public int tracking;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Justification {
        private static final /* synthetic */ Justification[] $VALUES;
        public static final Justification CENTER;
        public static final Justification LEFT_ALIGN;
        public static final Justification RIGHT_ALIGN;

        static {
            Justification justification = new Justification("LEFT_ALIGN", 0);
            LEFT_ALIGN = justification;
            Justification justification2 = new Justification("RIGHT_ALIGN", 1);
            RIGHT_ALIGN = justification2;
            Justification justification3 = new Justification("CENTER", 2);
            CENTER = justification3;
            $VALUES = new Justification[]{justification, justification2, justification3};
        }

        public static Justification valueOf(String str) {
            return (Justification) Enum.valueOf(Justification.class, str);
        }

        public static Justification[] values() {
            return (Justification[]) $VALUES.clone();
        }
    }

    public final int hashCode() {
        int ordinal = ((this.justification.ordinal() + (((int) (Animation.CC.m(this.text.hashCode() * 31, 31, this.fontName) + this.size)) * 31)) * 31) + this.tracking;
        long floatToRawIntBits = Float.floatToRawIntBits(this.lineHeight);
        return (((ordinal * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.color;
    }
}
