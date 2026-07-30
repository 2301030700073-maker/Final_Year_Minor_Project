package c.b.a.b.b.n;

import android.content.ComponentName;
import android.database.Cursor;
import android.icu.text.StringSearch;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.MultiHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.function.Function;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class j implements Callable, LauncherModel.ModelUpdateTask {
    public static final String[] h = new String[0];

    /* renamed from: a, reason: collision with root package name */
    public int f2757a;

    /* renamed from: b, reason: collision with root package name */
    public final FutureTask f2758b = new FutureTask(this);

    /* renamed from: c, reason: collision with root package name */
    public final String f2759c;

    /* renamed from: d, reason: collision with root package name */
    public LauncherAppState f2760d;
    public LauncherModel e;
    public BgDataModel f;
    public AllAppsList g;

    public j(String str) {
        this.f2759c = str.toLowerCase();
    }

    public final void a(List list, String[] strArr, StringSearch stringSearch, PriorityQueue priorityQueue) {
        g gVar = new g(list, strArr, this.f2759c, stringSearch);
        if (gVar.f2749b >= 0.1f) {
            priorityQueue.add(gVar);
            if (priorityQueue.size() > this.f2757a) {
                priorityQueue.poll();
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        Cursor query;
        if (!this.e.isModelLoaded()) {
            Log.d("AppSearchProvider", "Workspace not loaded, loading now");
            this.e.startLoaderForResults(new LoaderResults(this.f2760d, this.f, this.g, new BgDataModel.Callbacks[0]));
            return Collections.emptyList();
        }
        if (!FeatureFlags.APP_SEARCH_IMPROVEMENTS.get()) {
            ArrayList arrayList = new ArrayList();
            DefaultAppSearchAlgorithm.StringMatcher stringMatcher = new DefaultAppSearchAlgorithm.StringMatcher();
            Iterator it = this.g.data.iterator();
            while (it.hasNext()) {
                AppInfo appInfo = (AppInfo) it.next();
                if (DefaultAppSearchAlgorithm.matches(appInfo, this.f2759c, stringMatcher)) {
                    arrayList.add(appInfo);
                    if (appInfo.usingLowResIcon()) {
                        this.f2760d.mIconCache.getTitleAndIcon(appInfo, false);
                    }
                }
            }
            Collections.sort(arrayList, new AppInfoComparator(this.f2760d.mContext));
            return (List) arrayList.stream().map(new Function() { // from class: c.b.a.b.b.n.a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new h((AppInfo) obj, 0);
                }
            }).collect(Collectors.toList());
        }
        String[] strArr = h;
        PriorityQueue priorityQueue = new PriorityQueue();
        MultiHashMap multiHashMap = new MultiHashMap();
        Iterator it2 = this.g.data.iterator();
        while (it2.hasNext()) {
            AppInfo appInfo2 = (AppInfo) it2.next();
            multiHashMap.addToList(appInfo2.componentName, appInfo2);
        }
        String str = this.f2759c;
        StringSearch stringSearch = new StringSearch(str, str);
        stringSearch.getCollator().setStrength(0);
        String[] strArr2 = {"componentName", "keywords"};
        IconCache iconCache = this.f2760d.mIconCache;
        synchronized (iconCache) {
            query = iconCache.mIconDb.query(strArr2, null, null);
        }
        while (query.moveToNext()) {
            try {
                List list = (List) multiHashMap.remove(ComponentName.unflattenFromString(query.getString(0)));
                if (list != null) {
                    String string = query.getString(1);
                    a(list, TextUtils.isEmpty(string) ? strArr : string.split("\n"), stringSearch, priorityQueue);
                }
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        query.close();
        Iterator it3 = multiHashMap.values().iterator();
        while (it3.hasNext()) {
            a((List) it3.next(), strArr, stringSearch, priorityQueue);
        }
        List<h> list2 = (List) priorityQueue.stream().sorted(Comparator.reverseOrder()).flatMap(new Function() { // from class: c.b.a.b.b.n.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                final g gVar = (g) obj;
                return gVar.f2751d.stream().map(new Function() { // from class: c.b.a.b.b.n.b
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return new h((AppInfo) obj2, g.this.f2750c);
                    }
                });
            }
        }).limit(this.f2757a).collect(Collectors.toList());
        for (h hVar : list2) {
            if (hVar.f2752a.usingLowResIcon()) {
                this.f2760d.mIconCache.getTitleAndIcon(hVar.f2752a, false);
            }
        }
        return list2;
    }

    @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
    public void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor) {
        this.f2760d = launcherAppState;
        this.e = launcherModel;
        this.f = bgDataModel;
        this.g = allAppsList;
        this.f2757a = LauncherAppState.getIDP(launcherAppState.mContext).numColumns;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2758b.run();
    }
}
