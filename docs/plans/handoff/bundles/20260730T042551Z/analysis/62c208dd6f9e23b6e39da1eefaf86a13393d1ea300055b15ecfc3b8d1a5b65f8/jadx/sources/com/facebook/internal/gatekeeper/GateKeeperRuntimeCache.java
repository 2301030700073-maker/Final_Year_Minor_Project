package com.facebook.internal.gatekeeper;

import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.C0173Do;
import defpackage.C3756th;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class GateKeeperRuntimeCache {
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, GateKeeper>> gateKeepers = new ConcurrentHashMap<>();

    public static /* synthetic */ List dumpGateKeepers$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        return gateKeeperRuntimeCache.dumpGateKeepers(str);
    }

    public static /* synthetic */ GateKeeper getGateKeeper$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        return gateKeeperRuntimeCache.getGateKeeper(str, str2);
    }

    public static /* synthetic */ boolean getGateKeeperValue$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        return gateKeeperRuntimeCache.getGateKeeperValue(str, str2, z);
    }

    public static /* synthetic */ void resetCache$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        gateKeeperRuntimeCache.resetCache(str);
    }

    public static /* synthetic */ void setGateKeeper$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, GateKeeper gateKeeper, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        gateKeeperRuntimeCache.setGateKeeper(str, gateKeeper);
    }

    public static /* synthetic */ void setGateKeeperValue$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        gateKeeperRuntimeCache.setGateKeeperValue(str, str2, z);
    }

    public static /* synthetic */ void setGateKeepers$default(GateKeeperRuntimeCache gateKeeperRuntimeCache, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = C3756th.m8303if();
        }
        gateKeeperRuntimeCache.setGateKeepers(str, list);
    }

    public final List<GateKeeper> dumpGateKeepers(String str) {
        C0173Do.m401try(str, "appId");
        ConcurrentHashMap<String, GateKeeper> concurrentHashMap = this.gateKeepers.get(str);
        if (concurrentHashMap == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(concurrentHashMap.size());
        Iterator<Map.Entry<String, GateKeeper>> it = concurrentHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    public final GateKeeper getGateKeeper(String str, String str2) {
        C0173Do.m401try(str, "appId");
        C0173Do.m401try(str2, FacebookRequestErrorClassification.KEY_NAME);
        ConcurrentHashMap<String, GateKeeper> concurrentHashMap = this.gateKeepers.get(str);
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.get(str2);
    }

    public final boolean getGateKeeperValue(String str, String str2, boolean z) {
        C0173Do.m401try(str, "appId");
        C0173Do.m401try(str2, FacebookRequestErrorClassification.KEY_NAME);
        GateKeeper gateKeeper = getGateKeeper(str, str2);
        return gateKeeper == null ? z : gateKeeper.getValue();
    }

    public final void resetCache(String str) {
        C0173Do.m401try(str, "appId");
        this.gateKeepers.remove(str);
    }

    public final void setGateKeeper(String str, GateKeeper gateKeeper) {
        C0173Do.m401try(str, "appId");
        C0173Do.m401try(gateKeeper, "gateKeeper");
        if (!this.gateKeepers.containsKey(str)) {
            this.gateKeepers.put(str, new ConcurrentHashMap<>());
        }
        ConcurrentHashMap<String, GateKeeper> concurrentHashMap = this.gateKeepers.get(str);
        if (concurrentHashMap == null) {
            return;
        }
        concurrentHashMap.put(gateKeeper.getName(), gateKeeper);
    }

    public final void setGateKeeperValue(String str, String str2, boolean z) {
        C0173Do.m401try(str, "appId");
        C0173Do.m401try(str2, FacebookRequestErrorClassification.KEY_NAME);
        setGateKeeper(str, new GateKeeper(str2, z));
    }

    public final void setGateKeepers(String str, List<GateKeeper> list) {
        C0173Do.m401try(str, "appId");
        C0173Do.m401try(list, "gateKeeperList");
        ConcurrentHashMap<String, GateKeeper> concurrentHashMap = new ConcurrentHashMap<>();
        for (GateKeeper gateKeeper : list) {
            concurrentHashMap.put(gateKeeper.getName(), gateKeeper);
        }
        this.gateKeepers.put(str, concurrentHashMap);
    }
}
