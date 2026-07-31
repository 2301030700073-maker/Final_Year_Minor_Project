package androidx.work.impl.constraints;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkMeteredControllerPre28;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingControllerPre28;
import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import coil3.ComponentRegistry;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.commonmark.node.Node;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkConstraintsTracker {
    public final ArrayList controllers;

    public WorkConstraintsTracker(ComponentRegistry.Builder builder) {
        builder.getClass();
        String str = WorkConstraintsTrackerKt.TAG;
        Node node = (Node) builder.mappers;
        Node node2 = (Node) builder.lazyFetcherFactories;
        ArrayList mutableListOf = Jsoup.mutableListOf(new BatteryNotLowController(node, 1), new BatteryNotLowController((BatteryNotLowTracker) builder.keyers), new BatteryNotLowController((Node) builder.lazyDecoderFactories, 4));
        if (Build.VERSION.SDK_INT >= 28) {
            Context context = (Context) builder.interceptors;
            context.getClass();
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            mutableListOf.add(new NetworkRequestConstraintController((ConnectivityManager) systemService));
        } else {
            node2.getClass();
            mutableListOf.addAll(Jsoup.listOf((Object[]) new BaseConstraintController[]{new BatteryNotLowController(node2, 2), new BatteryNotLowController(node2, 3), new NetworkNotRoamingControllerPre28(node2), new NetworkMeteredControllerPre28(node2)}));
        }
        this.controllers = mutableListOf;
    }

    public final Flow track(WorkSpec workSpec) {
        workSpec.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = this.controllers.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((ConstraintController) next).hasConstraint(workSpec)) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((ConstraintController) it2.next()).track(workSpec.constraints));
        }
        return FlowKt.distinctUntilChanged(new WorkConstraintsTracker$track$$inlined$combine$1((Flow[]) CollectionsKt.toList(arrayList2).toArray(new Flow[0]), 0));
    }
}
