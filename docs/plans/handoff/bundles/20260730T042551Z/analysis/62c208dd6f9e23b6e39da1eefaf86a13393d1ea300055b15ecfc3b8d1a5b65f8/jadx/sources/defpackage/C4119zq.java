package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* renamed from: zq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4119zq {

    /* renamed from: do, reason: not valid java name */
    public static final Object f16941do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C4119zq f16942do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f16943do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f16946do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<BroadcastReceiver, ArrayList<Cfor>> f16945do = new HashMap<>();

    /* renamed from: if, reason: not valid java name */
    public final HashMap<String, ArrayList<Cfor>> f16947if = new HashMap<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cif> f16944do = new ArrayList<>();

    /* renamed from: zq$do, reason: invalid class name */
    public class Cdo extends Handler {
        public Cdo(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int size;
            Cif[] cifArr;
            if (message.what != 1) {
                super.handleMessage(message);
                return;
            }
            C4119zq c4119zq = C4119zq.this;
            while (true) {
                synchronized (c4119zq.f16945do) {
                    size = c4119zq.f16944do.size();
                    if (size <= 0) {
                        return;
                    }
                    cifArr = new Cif[size];
                    c4119zq.f16944do.toArray(cifArr);
                    c4119zq.f16944do.clear();
                }
                for (int i = 0; i < size; i++) {
                    Cif cif = cifArr[i];
                    int size2 = cif.f16954do.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        Cfor cfor = cif.f16954do.get(i2);
                        if (!cfor.f16952if) {
                            cfor.f16949do.onReceive(c4119zq.f16943do, cif.f16953do);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: zq$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final BroadcastReceiver f16949do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final IntentFilter f16950do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f16951do;

        /* renamed from: if, reason: not valid java name */
        public boolean f16952if;

        public Cfor(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
            this.f16950do = intentFilter;
            this.f16949do = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f16949do);
            sb.append(" filter=");
            sb.append(this.f16950do);
            if (this.f16952if) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: zq$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Intent f16953do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Cfor> f16954do;

        public Cif(Intent intent, ArrayList<Cfor> arrayList) {
            this.f16953do = intent;
            this.f16954do = arrayList;
        }
    }

    public C4119zq(Context context) {
        this.f16943do = context;
        this.f16946do = new Cdo(context.getMainLooper());
    }

    /* renamed from: do, reason: not valid java name */
    public static C4119zq m8809do(Context context) {
        C4119zq c4119zq;
        synchronized (f16941do) {
            if (f16942do == null) {
                f16942do = new C4119zq(context.getApplicationContext());
            }
            c4119zq = f16942do;
        }
        return c4119zq;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8810for(Intent intent) {
        int i;
        String str;
        ArrayList arrayList;
        ArrayList<Cfor> arrayList2;
        String str2;
        synchronized (this.f16945do) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f16943do.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                intent.toString();
            }
            ArrayList<Cfor> arrayList3 = this.f16947if.get(intent.getAction());
            if (arrayList3 != null) {
                if (z) {
                    arrayList3.toString();
                }
                ArrayList arrayList4 = null;
                int i2 = 0;
                while (i2 < arrayList3.size()) {
                    Cfor cfor = arrayList3.get(i2);
                    if (z) {
                        Objects.toString(cfor.f16950do);
                    }
                    if (cfor.f16951do) {
                        i = i2;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = resolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i = i2;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = resolveTypeIfNeeded;
                        int match = cfor.f16950do.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                Integer.toHexString(match);
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(cfor);
                            cfor.f16951do = true;
                            i2 = i + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            resolveTypeIfNeeded = str2;
                        }
                    }
                    arrayList4 = arrayList;
                    i2 = i + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    resolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i3 = 0; i3 < arrayList5.size(); i3++) {
                        ((Cfor) arrayList5.get(i3)).f16951do = false;
                    }
                    this.f16944do.add(new Cif(intent, arrayList5));
                    if (!this.f16946do.hasMessages(1)) {
                        this.f16946do.sendEmptyMessage(1);
                    }
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8811if(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f16945do) {
            Cfor cfor = new Cfor(broadcastReceiver, intentFilter);
            ArrayList<Cfor> arrayList = this.f16945do.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f16945do.put(broadcastReceiver, arrayList);
            }
            arrayList.add(cfor);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<Cfor> arrayList2 = this.f16947if.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f16947if.put(action, arrayList2);
                }
                arrayList2.add(cfor);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8812new(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f16945do) {
            ArrayList<Cfor> remove = this.f16945do.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                Cfor cfor = remove.get(size);
                cfor.f16952if = true;
                for (int i = 0; i < cfor.f16950do.countActions(); i++) {
                    String action = cfor.f16950do.getAction(i);
                    ArrayList<Cfor> arrayList = this.f16947if.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            Cfor cfor2 = arrayList.get(size2);
                            if (cfor2.f16949do == broadcastReceiver) {
                                cfor2.f16952if = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f16947if.remove(action);
                        }
                    }
                }
            }
        }
    }
}
