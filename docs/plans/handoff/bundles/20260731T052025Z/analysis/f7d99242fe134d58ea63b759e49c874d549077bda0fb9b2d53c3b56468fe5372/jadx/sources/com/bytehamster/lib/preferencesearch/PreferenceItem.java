package com.bytehamster.lib.preferencesearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.fragment.app.FragmentState;
import java.util.ArrayList;
import java.util.Locale;
import org.jsoup.safety.Cleaner;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceItem extends ListItem implements Parcelable {
    public String breadcrumbs;
    public String entries;
    public String key;
    public ArrayList keyBreadcrumbs;
    public String keywords;
    public String lastKeyword;
    public float lastScore;
    public int resId;
    public String summary;
    public String title;
    public static final Cleaner fuzzyScore = new Cleaner(Locale.getDefault());
    public static final Parcelable.Creator<PreferenceItem> CREATOR = new FragmentState.AnonymousClass1(22);

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getInfo() {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.title)) {
            sb.append("ø");
            sb.append(this.title);
        }
        if (!TextUtils.isEmpty(this.summary)) {
            sb.append("ø");
            sb.append(this.summary);
        }
        if (!TextUtils.isEmpty(this.entries)) {
            sb.append("ø");
            sb.append(this.entries);
        }
        if (!TextUtils.isEmpty(this.breadcrumbs)) {
            sb.append("ø");
            sb.append(this.breadcrumbs);
        }
        if (!TextUtils.isEmpty(this.keywords)) {
            sb.append("ø");
            sb.append(this.keywords);
        }
        return sb.toString();
    }

    public final float getScore(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        if (TextUtils.equals(this.lastKeyword, str)) {
            return this.lastScore;
        }
        String info = getInfo();
        String m = CameraDevices$CC.m("ø", str);
        Locale locale = (Locale) fuzzyScore.safelist;
        String lowerCase = info.toString().toLowerCase(locale);
        String lowerCase2 = m.toString().toLowerCase(locale);
        int i = Integer.MIN_VALUE;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < lowerCase2.length(); i4++) {
            char charAt = lowerCase2.charAt(i4);
            boolean z = false;
            while (i3 < lowerCase.length() && !z) {
                if (charAt == lowerCase.charAt(i3)) {
                    int i5 = i2 + 1;
                    if (i + 1 == i3) {
                        i5 = i2 + 3;
                    }
                    i = i3;
                    i2 = i5;
                    z = true;
                }
                i3++;
            }
        }
        float length = i2 / (((str.length() + 1) * 3) - 2);
        this.lastScore = length;
        this.lastKeyword = str;
        return length;
    }

    @Override // com.bytehamster.lib.preferencesearch.ListItem
    public final int getType() {
        return 2;
    }

    public final String toString() {
        return "PreferenceItem: " + this.title + " " + this.summary + " " + this.key;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeString(this.summary);
        parcel.writeString(this.key);
        parcel.writeString(this.breadcrumbs);
        parcel.writeString(this.keywords);
        parcel.writeInt(this.resId);
    }
}
