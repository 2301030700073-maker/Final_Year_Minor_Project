package c.b.a.c.d.j;

import android.accounts.Account;
import android.view.View;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Account f2965a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f2966b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f2967c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f2968d;
    public final String e;
    public final String f;
    public final c.b.a.c.i.a g;
    public Integer h;

    public k(Account account, Set set, Map map, int i, View view, String str, String str2, c.b.a.c.i.a aVar) {
        this.f2965a = account;
        this.f2966b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f2968d = Collections.EMPTY_MAP;
        this.e = str;
        this.f = str2;
        this.g = aVar;
        HashSet hashSet = new HashSet(this.f2966b);
        Iterator it = this.f2968d.values().iterator();
        while (it.hasNext()) {
            Set set2 = ((i) it.next()).f2960a;
            hashSet.addAll(null);
        }
        this.f2967c = Collections.unmodifiableSet(hashSet);
    }
}
