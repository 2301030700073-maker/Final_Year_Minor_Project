package com.braze.requests;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.ranges.RangesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class m {
    public static final l b;
    public static final LinkedHashMap c;
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    public static final m j;
    public static final m k;
    public static final m l;
    public static final m m;
    public static final m n;
    public static final m o;
    public static final /* synthetic */ m[] p;

    /* renamed from: a, reason: collision with root package name */
    public final String f199a;

    static {
        m mVar = new m("CONTENT_CARD_SYNC", 0, "content_cards/sync");
        d = mVar;
        m mVar2 = new m("FEATURE_FLAG_SYNC", 1, "feature_flags/sync");
        e = mVar2;
        m mVar3 = new m("V3_DATA", 2, "data");
        f = mVar3;
        m mVar4 = new m("TEMPLATE_REQUEST", 3, SDKConstants.PARAM_UPDATE_TEMPLATE);
        g = mVar4;
        m mVar5 = new m("PUSH_DELIVERY_EVENTS", 4, "push/delivery_events");
        h = mVar5;
        m mVar6 = new m("GEOFENCE_REFRESH", 5, "geofence/request");
        i = mVar6;
        m mVar7 = new m("GEOFENCE_REPORT", 6, "geofence/report");
        j = mVar7;
        m mVar8 = new m("PUSH_REDELIVER", 7, "push/redeliver");
        k = mVar8;
        m mVar9 = new m("BANNERS_SYNC", 8, "banners/sync");
        l = mVar9;
        m mVar10 = new m("SDK_DEBUGGER_INIT", 9, "debugger/init");
        m = mVar10;
        m mVar11 = new m("SDK_DEBUGGER_LOG", 10, "debugger/log");
        n = mVar11;
        m mVar12 = new m("DUST_CONFIG", 11, "dust/config");
        o = mVar12;
        m[] mVarArr = {mVar, mVar2, mVar3, mVar4, mVar5, mVar6, mVar7, mVar8, mVar9, mVar10, mVar11, mVar12};
        p = mVarArr;
        EnumEntriesKt.enumEntries(mVarArr);
        b = new l();
        m[] values = values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(values.length), 16));
        for (m mVar13 : values) {
            linkedHashMap.put(mVar13.f199a, mVar13);
        }
        c = linkedHashMap;
    }

    public m(String str, int i2, String str2) {
        this.f199a = str2;
    }

    public static m valueOf(String str) {
        return (m) Enum.valueOf(m.class, str);
    }

    public static m[] values() {
        return (m[]) p.clone();
    }
}
