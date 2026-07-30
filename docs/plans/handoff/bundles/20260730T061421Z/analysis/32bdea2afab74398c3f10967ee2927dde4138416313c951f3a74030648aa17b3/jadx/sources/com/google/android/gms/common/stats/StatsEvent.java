package com.google.android.gms.common.stats;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;
import java.util.List;

/* loaded from: classes.dex */
public abstract class StatsEvent extends zzbkv implements ReflectedParcelable {
    public String toString() {
        WakeLockEvent wakeLockEvent = (WakeLockEvent) this;
        long j = wakeLockEvent.f3440b;
        int i = wakeLockEvent.f3441c;
        String str = wakeLockEvent.f3442d;
        int i2 = wakeLockEvent.g;
        List list = wakeLockEvent.h;
        String join = list == null ? "" : TextUtils.join(",", list);
        int i3 = wakeLockEvent.k;
        String str2 = wakeLockEvent.e;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = wakeLockEvent.l;
        if (str3 == null) {
            str3 = "";
        }
        float f = wakeLockEvent.m;
        String str4 = wakeLockEvent.f;
        String str5 = str4 != null ? str4 : "";
        StringBuilder sb = new StringBuilder(str5.length() + str3.length() + str2.length() + String.valueOf(join).length() + String.valueOf(str).length() + 45);
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i3);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str5);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 53);
        sb3.append(j);
        sb3.append("\t");
        sb3.append(i);
        sb3.append("\t");
        sb3.append(-1L);
        sb3.append(sb2);
        return sb3.toString();
    }
}
