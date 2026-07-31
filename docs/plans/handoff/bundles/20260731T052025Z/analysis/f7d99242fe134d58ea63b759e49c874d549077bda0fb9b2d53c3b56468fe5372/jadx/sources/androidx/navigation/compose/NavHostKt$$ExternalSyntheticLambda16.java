package androidx.navigation.compose;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.SizeTransformImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.ConnectionPool;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda16 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda16(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
        this.f$6 = obj7;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float f;
        int i = this.$r8$classId;
        Object obj2 = this.f$6;
        Object obj3 = this.f$5;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        Object obj7 = this.f$1;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) obj8;
                ComposeNavigator composeNavigator = (ComposeNavigator) obj7;
                Function1 function1 = (Function1) obj6;
                Function1 function12 = (Function1) obj5;
                Function1 function13 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj2;
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj;
                if (!((List) ((State) obj3).getValue()).contains(animatedContentTransitionScopeImpl.getInitialState())) {
                    return CrossfadeKt.togetherWith(EnterTransitionImpl.None, ExitTransitionImpl.None);
                }
                String str = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getInitialState()).id;
                int findKeyIndex = mutableObjectFloatMap.findKeyIndex(str);
                if (findKeyIndex >= 0) {
                    f = mutableObjectFloatMap.values[findKeyIndex];
                } else {
                    mutableObjectFloatMap.set(str, 0.0f);
                    f = 0.0f;
                }
                if (!Intrinsics.areEqual(((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).id, ((NavBackStackEntry) animatedContentTransitionScopeImpl.getInitialState()).id)) {
                    f = (((Boolean) composeNavigator.isPop.getValue()).booleanValue() || ((Boolean) mutableState.getValue()).booleanValue()) ? f - 1.0f : f + 1.0f;
                }
                mutableObjectFloatMap.set(((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).id, f);
                return new ContentTransform((EnterTransitionImpl) function1.invoke(animatedContentTransitionScopeImpl), (ExitTransitionImpl) function12.invoke(animatedContentTransitionScopeImpl), f, (SizeTransformImpl) function13.invoke(animatedContentTransitionScopeImpl));
            default:
                ConnectionPool connectionPool = (ConnectionPool) obj8;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj7;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) obj6;
                Ref$ObjectRef ref$ObjectRef3 = (Ref$ObjectRef) obj5;
                Ref$ObjectRef ref$ObjectRef4 = (Ref$ObjectRef) obj4;
                Ref$ObjectRef ref$ObjectRef5 = (Ref$ObjectRef) obj3;
                Ref$ObjectRef ref$ObjectRef6 = (Ref$ObjectRef) obj2;
                int i2 = 2;
                if (((Integer) obj).intValue() == 2) {
                    String name = ((XmlPullParser) connectionPool.delegate).getName();
                    if (name != null) {
                        switch (name.hashCode()) {
                            case -1618015780:
                                if (name.equals("identities")) {
                                    ArrayList arrayList = new ArrayList();
                                    connectionPool.readElement(new XmlSettingsParser$$ExternalSyntheticLambda2(connectionPool, arrayList, i2));
                                    ref$ObjectRef5.element = arrayList;
                                    break;
                                }
                                break;
                            case -1443345718:
                                if (name.equals("incoming-server")) {
                                    ref$ObjectRef2.element = connectionPool.readServerSettings();
                                    break;
                                }
                                break;
                            case -1256393532:
                                if (name.equals("outgoing-server")) {
                                    ref$ObjectRef3.element = connectionPool.readServerSettings();
                                    break;
                                }
                                break;
                            case -683249211:
                                if (name.equals("folders")) {
                                    ArrayList arrayList2 = new ArrayList();
                                    connectionPool.readElement(new XmlSettingsParser$$ExternalSyntheticLambda2(connectionPool, arrayList2, 1));
                                    ref$ObjectRef6.element = arrayList2;
                                    break;
                                }
                                break;
                            case 3373707:
                                if (name.equals("name")) {
                                    ref$ObjectRef.element = connectionPool.readText();
                                    break;
                                }
                                break;
                            case 1434631203:
                                if (name.equals("settings")) {
                                    ref$ObjectRef4.element = connectionPool.readSettingsContainer();
                                    break;
                                }
                                break;
                        }
                    }
                    connectionPool.skipElement();
                }
                return Unit.INSTANCE;
        }
    }
}
