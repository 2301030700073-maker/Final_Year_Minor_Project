package com.google.android.flexbox;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlexboxHelper$Order implements Comparable {
    public int index;
    public int order;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        FlexboxHelper$Order flexboxHelper$Order = (FlexboxHelper$Order) obj;
        int i = this.order;
        int i2 = flexboxHelper$Order.order;
        return i != i2 ? i - i2 : this.index - flexboxHelper$Order.index;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Order{order=");
        sb.append(this.order);
        sb.append(", index=");
        return Animation.CC.m(sb, this.index, '}');
    }
}
