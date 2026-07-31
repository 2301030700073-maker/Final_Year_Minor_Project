package org.wikipedia.page;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Section {
    public static final Companion Companion = new Companion();
    public final String anchor;
    public final int id;
    public final int level;
    public final String text;
    public final String title;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Section$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Section(int i, int i2, int i3, String str, String str2, String str3) {
        this.id = (i & 1) == 0 ? 0 : i2;
        if ((i & 2) == 0) {
            this.level = 1;
        } else {
            this.level = i3;
        }
        if ((i & 4) == 0) {
            this.title = "";
        } else {
            this.title = str;
        }
        if ((i & 8) == 0) {
            this.anchor = "";
        } else {
            this.anchor = str2;
        }
        if ((i & 16) == 0) {
            this.text = "";
        } else {
            this.text = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Section)) {
            return false;
        }
        Section section = (Section) obj;
        return this.id == section.id && this.level == section.level && Intrinsics.areEqual(this.title, section.title) && Intrinsics.areEqual(this.anchor, section.anchor) && Intrinsics.areEqual(this.text, section.text);
    }

    public final int hashCode() {
        return this.text.hashCode() + Animation.CC.m(Animation.CC.m(((this.id * 31) + this.level) * 31, 31, this.title), 31, this.anchor);
    }

    public final String toString() {
        StringBuilder m = Animation.CC.m(this.id, this.level, "Section(id=", ", level=", ", title=");
        Modifier.CC.m(m, this.title, ", anchor=", this.anchor, ", text=");
        return Animation.CC.m(m, this.text, ")");
    }

    public Section(int i, int i2, String str, String str2) {
        this.id = i;
        this.level = i2;
        this.title = str;
        this.anchor = str2;
        this.text = "";
    }
}
