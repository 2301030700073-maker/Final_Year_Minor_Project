package coil3.network;

import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.AbstractClickableNode;
import androidx.compose.foundation.AbstractClickableNode$onFocusChange$1$1;
import androidx.compose.foundation.AbstractClickableNode$onFocusChange$2$1;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.room.InvalidationTracker;
import androidx.room.ObserverWrapper;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NetworkFetcher$fetch$2 extends FunctionReferenceImpl implements Function1 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NetworkFetcher$fetch$2(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, i2, cls, obj, str, str2);
        this.$r8$classId = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i;
        int i2 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i2) {
            case 0:
                return NetworkFetcher.access$doFetch((NetworkFetcher) this.receiver, (Continuation) obj);
            case 1:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                AbstractClickableNode abstractClickableNode = (AbstractClickableNode) this.receiver;
                MutableLongObjectMap mutableLongObjectMap = abstractClickableNode.currentKeyPressInteractions;
                if (booleanValue) {
                    abstractClickableNode.initializeIndicationAndInteractionSourceIfNeeded();
                } else {
                    if (abstractClickableNode.interactionSource != null) {
                        Object[] objArr = mutableLongObjectMap.values;
                        long[] jArr = mutableLongObjectMap.metadata;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i3 = 0;
                            while (true) {
                                long j = jArr[i3];
                                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i4 = 8;
                                    int i5 = 8 - ((~(i3 - length)) >>> 31);
                                    int i6 = 0;
                                    while (i6 < i5) {
                                        if ((255 & j) < 128) {
                                            i = i4;
                                            JobKt.launch$default(abstractClickableNode.getCoroutineScope(), null, null, new AbstractClickableNode$onFocusChange$1$1(abstractClickableNode, (PressInteraction.Press) objArr[(i3 << 3) + i6], null), 3);
                                        } else {
                                            i = i4;
                                        }
                                        j >>= i;
                                        i6++;
                                        i4 = i;
                                    }
                                    if (i5 != i4) {
                                    }
                                }
                                if (i3 != length) {
                                    i3++;
                                }
                            }
                        }
                        PressInteraction.Press press = abstractClickableNode.indirectPointerPressInteraction;
                        if (press != null) {
                            JobKt.launch$default(abstractClickableNode.getCoroutineScope(), null, null, new AbstractClickableNode$onFocusChange$2$1(abstractClickableNode, press, null), 3);
                        }
                    }
                    mutableLongObjectMap.clear();
                    abstractClickableNode.indirectPointerPressInteraction = null;
                    abstractClickableNode.onCancelKeyInput();
                }
                return unit;
            case 2:
                ((Set) obj).getClass();
                InvalidationTracker invalidationTracker = (InvalidationTracker) this.receiver;
                ReentrantLock reentrantLock = invalidationTracker.observerMapLock;
                reentrantLock.lock();
                try {
                    List list = CollectionsKt.toList(invalidationTracker.observerMap.values());
                    reentrantLock.unlock();
                    Iterator it = list.iterator();
                    if (!it.hasNext()) {
                        return unit;
                    }
                    ((ObserverWrapper) it.next()).getClass();
                    throw null;
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            default:
                ((JobNode) this.receiver).invoke((Throwable) obj);
                return unit;
        }
    }
}
