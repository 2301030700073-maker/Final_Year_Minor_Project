package androidx.glance.appwidget;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.glance.Emittable;
import androidx.glance.appwidget.proto.LayoutProto$LayoutNode;
import androidx.glance.state.GlanceState;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutConfiguration {
    public static final ContentReceiver$Key Companion = new ContentReceiver$Key();
    public final int appWidgetId;
    public final Context context;
    public final Set existingLayoutIds;
    public final LinkedHashMap layoutConfig;
    public int nextIndex;
    public final LinkedHashSet usedLayoutIds;

    public LayoutConfiguration(Context context, LinkedHashMap linkedHashMap, int i, int i2, Set set) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.context = context;
        this.layoutConfig = linkedHashMap;
        this.nextIndex = i;
        this.appWidgetId = i2;
        this.usedLayoutIds = linkedHashSet;
        this.existingLayoutIds = set;
    }

    public final int addLayout(Emittable emittable) {
        LayoutProto$LayoutNode createNode = ExceptionsKt.createNode(this.context, emittable);
        synchronized (this) {
            Integer num = (Integer) this.layoutConfig.get(createNode);
            if (num != null) {
                int intValue = num.intValue();
                this.usedLayoutIds.add(Integer.valueOf(intValue));
                return intValue;
            }
            int i = this.nextIndex;
            while (this.existingLayoutIds.contains(Integer.valueOf(i))) {
                i = (i + 1) % LayoutSelectionKt.TopLevelLayoutsCount;
                if (i == this.nextIndex) {
                    throw new IllegalArgumentException("Cannot assign a valid layout index to the new layout: no free index left.");
                }
            }
            this.nextIndex = (i + 1) % LayoutSelectionKt.TopLevelLayoutsCount;
            this.usedLayoutIds.add(Integer.valueOf(i));
            this.existingLayoutIds.add(Integer.valueOf(i));
            this.layoutConfig.put(createNode, Integer.valueOf(i));
            return i;
        }
    }

    public final Object save(AppWidgetSession$processEmittableTree$1 appWidgetSession$processEmittableTree$1) {
        Object updateValue = GlanceState.INSTANCE.updateValue(this.context, LayoutStateDefinition.INSTANCE, Animation.CC.m(this.appWidgetId, "appWidgetLayout-"), new DonateDialog$onCreateView$3.AnonymousClass1(5, this, null), appWidgetSession$processEmittableTree$1);
        return updateValue == CoroutineSingletons.COROUTINE_SUSPENDED ? updateValue : Unit.INSTANCE;
    }
}
