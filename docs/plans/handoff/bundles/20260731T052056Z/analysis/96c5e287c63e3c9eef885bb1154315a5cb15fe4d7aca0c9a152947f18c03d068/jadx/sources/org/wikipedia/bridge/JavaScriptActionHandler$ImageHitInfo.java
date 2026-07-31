package org.wikipedia.bridge;

import androidx.recyclerview.widget.RecyclerView;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class JavaScriptActionHandler$ImageHitInfo {
    public static final Companion Companion = new Companion();
    public final float height;
    public final float left;
    public final String src;
    public final float top;
    public final float width;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return JavaScriptActionHandler$ImageHitInfo$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ JavaScriptActionHandler$ImageHitInfo(int i, float f, float f2, float f3, float f4, String str) {
        if ((i & 1) == 0) {
            this.left = RecyclerView.DECELERATION_RATE;
        } else {
            this.left = f;
        }
        if ((i & 2) == 0) {
            this.top = RecyclerView.DECELERATION_RATE;
        } else {
            this.top = f2;
        }
        if ((i & 4) == 0) {
            this.width = RecyclerView.DECELERATION_RATE;
        } else {
            this.width = f3;
        }
        if ((i & 8) == 0) {
            this.height = RecyclerView.DECELERATION_RATE;
        } else {
            this.height = f4;
        }
        if ((i & 16) == 0) {
            this.src = "";
        } else {
            this.src = str;
        }
    }

    public JavaScriptActionHandler$ImageHitInfo(float f, float f2, float f3, float f4, String str) {
        str.getClass();
        this.left = f;
        this.top = f2;
        this.width = f3;
        this.height = f4;
        this.src = str;
    }
}
