package androidx.camera.camera2.impl;

import androidx.camera.core.impl.DeferrableSurface;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ReversedListReadOnly;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlin.text.MatcherMatchResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UseCaseSurfaceManager$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;

    public /* synthetic */ UseCaseSurfaceManager$$ExternalSyntheticLambda0(int i, List list) {
        this.$r8$classId = i;
        this.f$0 = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        List list = this.f$0;
        switch (i) {
            case 0:
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((DeferrableSurface) it.next()).decrementUseCount();
                }
                return unit;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.CustomActions;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[31];
                semanticsPropertyReceiver.set(semanticsPropertyKey, list);
                return unit;
            default:
                MatcherMatchResult matcherMatchResult = (MatcherMatchResult) obj;
                matcherMatchResult.getClass();
                return (CharSequence) list.get(Integer.parseInt((String) ((ReversedListReadOnly) matcherMatchResult.getGroupValues()).get(1)) - 1);
        }
    }
}
