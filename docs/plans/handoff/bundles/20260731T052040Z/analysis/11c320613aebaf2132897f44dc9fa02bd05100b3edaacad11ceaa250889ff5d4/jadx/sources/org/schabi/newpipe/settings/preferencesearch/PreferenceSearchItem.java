package org.schabi.newpipe.settings.preferencesearch;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PreferenceSearchItem {
    public final String breadcrumbs;
    public final String entries;
    public final String key;
    public final int searchIndexItemResId;
    public final String summary;
    public final String title;

    public PreferenceSearchItem(int i, String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str4.getClass();
        str5.getClass();
        this.key = str;
        this.title = str2;
        this.summary = str3;
        this.entries = str4;
        this.breadcrumbs = str5;
        this.searchIndexItemResId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreferenceSearchItem)) {
            return false;
        }
        PreferenceSearchItem preferenceSearchItem = (PreferenceSearchItem) obj;
        return Intrinsics.areEqual(this.key, preferenceSearchItem.key) && this.title.equals(preferenceSearchItem.title) && this.summary.equals(preferenceSearchItem.summary) && Intrinsics.areEqual(this.entries, preferenceSearchItem.entries) && Intrinsics.areEqual(this.breadcrumbs, preferenceSearchItem.breadcrumbs) && this.searchIndexItemResId == preferenceSearchItem.searchIndexItemResId;
    }

    public final int hashCode() {
        return Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(this.key.hashCode() * 31, 31, this.title), 31, this.summary), 31, this.entries), 31, this.breadcrumbs) + this.searchIndexItemResId;
    }

    public final String toString() {
        return "PreferenceItem: " + this.title + " " + this.summary + " " + this.key;
    }
}
