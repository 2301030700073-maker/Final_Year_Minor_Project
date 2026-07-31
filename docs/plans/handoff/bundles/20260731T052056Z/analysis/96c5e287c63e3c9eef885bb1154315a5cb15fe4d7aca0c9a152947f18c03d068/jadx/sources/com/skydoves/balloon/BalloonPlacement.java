package com.skydoves.balloon;

import android.view.View;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonPlacement {
    public final BalloonAlign align;
    public final View anchor;
    public final List subAnchors;
    public final PlacementType type;
    public final int yOff;

    public BalloonPlacement(View view, BalloonAlign balloonAlign, int i) {
        PlacementType placementType = PlacementType.ALIGNMENT;
        view.getClass();
        balloonAlign.getClass();
        placementType.getClass();
        this.anchor = view;
        this.subAnchors = EmptyList.INSTANCE;
        this.align = balloonAlign;
        this.yOff = i;
        this.type = placementType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BalloonPlacement)) {
            return false;
        }
        BalloonPlacement balloonPlacement = (BalloonPlacement) obj;
        return Intrinsics.areEqual(this.anchor, balloonPlacement.anchor) && this.subAnchors.equals(balloonPlacement.subAnchors) && this.align == balloonPlacement.align && this.yOff == balloonPlacement.yOff && this.type == balloonPlacement.type;
    }

    public final int hashCode() {
        return (this.type.hashCode() + ((((this.align.hashCode() + Modifier.CC.m(this.anchor.hashCode() * 31, 31, this.subAnchors)) * 961) + this.yOff) * 31)) * 961;
    }

    public final String toString() {
        return "BalloonPlacement(anchor=" + this.anchor + ", subAnchors=" + this.subAnchors + ", align=" + this.align + ", xOff=0, yOff=" + this.yOff + ", type=" + this.type + ", width=0, height=0)";
    }
}
