package net.newpipe.app.model;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Link {
    public final String action;
    public final String description;
    public final String title;
    public final String url;

    public Link(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.title = str;
        this.description = str2;
        this.action = str3;
        this.url = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Link)) {
            return false;
        }
        Link link = (Link) obj;
        return Intrinsics.areEqual(this.title, link.title) && Intrinsics.areEqual(this.description, link.description) && Intrinsics.areEqual(this.action, link.action) && this.url.equals(link.url);
    }

    public final int hashCode() {
        return this.url.hashCode() + Modifier.CC.m(Modifier.CC.m(this.title.hashCode() * 31, 31, this.description), 31, this.action);
    }

    public final String toString() {
        return "Link(title=" + this.title + ", description=" + this.description + ", action=" + this.action + ", url=" + this.url + ")";
    }
}
