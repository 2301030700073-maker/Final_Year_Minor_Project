package androidx.compose.ui;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.BackgroundNode;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.input.pointer.HitPathTracker$addHitPath$1;
import androidx.compose.ui.input.pointer.PointerInputResetException;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.text.TextStyle;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import java.util.ArrayList;
import kotlin.ULong;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Modifier {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Element extends Modifier {
    }

    boolean all(Function1 function1);

    Object foldIn(Object obj, Function2 function2);

    Modifier then(Modifier modifier);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.ui.Modifier$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC implements CallbackToFutureAdapter$Resolver {
        public static boolean $default$isFinishedFromNanos(Animation animation, long j) {
            return j >= animation.getDurationNanos();
        }

        public static Modifier $default$then(Modifier modifier, Modifier modifier2) {
            return modifier2 == Companion.$$INSTANCE ? modifier : new CombinedModifier(modifier, modifier2);
        }

        public static String m(int i, int i2, String str, String str2) {
            return str + i + str2 + i2;
        }

        public static LazyLayoutPrefetchState.PrefetchHandle schedulePrefetch$default(PopupMenu$1 popupMenu$1, int i) {
            LazyListState lazyListState = (LazyListState) popupMenu$1.this$0;
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) lazyListState.layoutInfoState.getValue();
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                return lazyListState.prefetchState.m111schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, lazyListMeasureResult.childConstraints, lazyListState.executeRequestsInHighPriorityMode, new SaversKt$$ExternalSyntheticLambda2(i, lazyListMeasureResult));
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }

        public static int m(float f, int i, int i2) {
            return (Float.floatToIntBits(f) + i) * i2;
        }

        public static int m(int i, int i2, String str) {
            return (str.hashCode() + i) * i2;
        }

        public static int m(int i, long j, int i2) {
            return (ULong.m658hashCodeimpl(j) + i) * i2;
        }

        public static int m(TextStyle textStyle, int i, int i2) {
            return (textStyle.hashCode() + i) * i2;
        }

        public static Object m(int i, ArrayList arrayList) {
            return arrayList.get(arrayList.size() - i);
        }

        public static float m(float f, float f2, float f3, float f4) {
            return ((f - f2) * f3) + f4;
        }

        public static String m(int i, String str) {
            return str + i;
        }

        public static String m(long j, String str, StringBuilder sb) {
            sb.append(j);
            sb.append(str);
            return sb.toString();
        }

        public static String m(Object obj, String str) {
            return str + obj;
        }

        public static String m(String str, int i, String str2) {
            return str + i + str2;
        }

        public static String m(String str, long j) {
            return str + j;
        }

        public static String m(String str, String str2, String str3) {
            return str + str2 + str3;
        }

        public static String m(StringBuilder sb, float f, char c) {
            sb.append(f);
            sb.append(c);
            return sb.toString();
        }

        public static String m(StringBuilder sb, int i, char c) {
            sb.append(i);
            sb.append(c);
            return sb.toString();
        }

        public static String m(StringBuilder sb, int i, String str) {
            sb.append(i);
            sb.append(str);
            return sb.toString();
        }

        public static String m(StringBuilder sb, String str, char c) {
            sb.append(str);
            sb.append(c);
            return sb.toString();
        }

        public static String m(StringBuilder sb, String str, String str2) {
            sb.append(str);
            sb.append(str2);
            return sb.toString();
        }

        public static StringBuilder m(long j, String str, String str2) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(j);
            sb.append(str2);
            return sb;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static StringBuilder m179m(String str, int i, String str2) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(i);
            sb.append(str2);
            return sb;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static StringBuilder m180m(String str, String str2, String str3) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(str2);
            sb.append(str3);
            return sb;
        }

        public static SerializationException m(String str) {
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck(str);
            return new SerializationException();
        }

        /* renamed from: m, reason: collision with other method in class */
        public static void m181m(long j, String str, StringBuilder sb) {
            sb.append((Object) Color.m250toStringimpl(j));
            sb.append(str);
        }

        public static /* synthetic */ void m(Object obj) {
            if (obj == null) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        }

        /* renamed from: m, reason: collision with other method in class */
        public static /* synthetic */ boolean m182m(Object obj) {
            return obj != null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Node implements DelegatableNode {
        public Node child;
        public NodeCoordinator coordinator;
        public HitPathTracker$addHitPath$1 detachedListener;
        public boolean insertedNodeAwaitingAttachForInvalidation;
        public boolean isAttached;
        public int kindSet;
        public boolean onAttachRunExpected;
        public boolean onDetachRunExpected;
        public ObserverNodeOwnerScope ownerScope;
        public Node parent;
        public ContextScope scope;
        public boolean updatedNodeAwaitingAttachForInvalidation;
        public Node node = this;
        public int aggregateChildKindSet = -1;

        public final CoroutineScope getCoroutineScope() {
            ContextScope contextScope = this.scope;
            if (contextScope != null) {
                return contextScope;
            }
            ContextScope CoroutineScope = JobKt.CoroutineScope(((AndroidComposeView) HitTestResultKt.requireOwner(this)).getCoroutineContext().plus(new JobImpl((Job) ((AndroidComposeView) HitTestResultKt.requireOwner(this)).getCoroutineContext().get(Job.Key.$$INSTANCE))));
            this.scope = CoroutineScope;
            return CoroutineScope;
        }

        public boolean getShouldAutoInvalidate() {
            return !(this instanceof BackgroundNode);
        }

        public void markAsAttached$ui() {
            if (this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("node attached multiple times");
            }
            if (this.coordinator == null) {
                InlineClassHelperKt.throwIllegalStateException("attach invoked on a node without a coordinator");
            }
            this.isAttached = true;
            this.onAttachRunExpected = true;
        }

        public void markAsDetached$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("Cannot detach a node that is not attached");
            }
            if (this.onAttachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.onDetachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() before markAsDetached()");
            }
            int i = 0;
            this.isAttached = false;
            ContextScope contextScope = this.scope;
            if (contextScope != null) {
                JobKt.cancel(contextScope, new PointerInputResetException("The Modifier.Node was detached", i));
                this.scope = null;
            }
        }

        public void reset$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("reset() called on an unattached node");
            }
            onReset();
        }

        public void runAttachLifecycle$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.onAttachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.onAttachRunExpected = false;
            onAttach();
            this.onDetachRunExpected = true;
        }

        public void runDetachLifecycle$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("node detached multiple times");
            }
            if (this.coordinator == null) {
                InlineClassHelperKt.throwIllegalStateException("detach invoked on a node without a coordinator");
            }
            if (!this.onDetachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.onDetachRunExpected = false;
            HitPathTracker$addHitPath$1 hitPathTracker$addHitPath$1 = this.detachedListener;
            if (hitPathTracker$addHitPath$1 != null) {
                hitPathTracker$addHitPath$1.invoke();
            }
            onDetach();
        }

        public void setAsDelegateTo$ui(Node node) {
            this.node = node;
        }

        public void updateCoordinator$ui(NodeCoordinator nodeCoordinator) {
            this.coordinator = nodeCoordinator;
        }

        public void onAttach() {
        }

        public /* synthetic */ void onDensityChange() {
        }

        public void onDetach() {
        }

        public /* synthetic */ void onLayoutDirectionChange() {
        }

        public void onReset() {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion implements Modifier {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Override // androidx.compose.ui.Modifier
        public final boolean all(Function1 function1) {
            return true;
        }

        public final String toString() {
            return "Modifier";
        }

        @Override // androidx.compose.ui.Modifier
        public final Modifier then(Modifier modifier) {
            return modifier;
        }

        @Override // androidx.compose.ui.Modifier
        public final Object foldIn(Object obj, Function2 function2) {
            return obj;
        }
    }
}
