package androidx.compose.runtime.saveable;

import android.content.Context;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RememberSaveableKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ RememberSaveableKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$5;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        Continuation continuation = null;
        switch (i) {
            case 0:
                SaveableHolder saveableHolder = (SaveableHolder) obj6;
                Saver saver = (Saver) obj5;
                SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) obj4;
                String str = (String) obj3;
                Object[] objArr = (Object[]) obj;
                boolean z2 = true;
                if (saveableHolder.registry != saveableStateRegistry) {
                    saveableHolder.registry = saveableStateRegistry;
                    z = true;
                } else {
                    z = false;
                }
                if (Intrinsics.areEqual(saveableHolder.key, str)) {
                    z2 = z;
                } else {
                    saveableHolder.key = str;
                }
                saveableHolder.saver = saver;
                saveableHolder.value = obj2;
                saveableHolder.inputs = objArr;
                SaveableStateRegistry.Entry entry = saveableHolder.entry;
                if (entry != null && z2) {
                    ((SVG) entry).unregister();
                    saveableHolder.entry = null;
                    saveableHolder.register$1();
                    break;
                }
                break;
            default:
                Map map = (Map) obj5;
                List list = (List) obj4;
                DefaultPagerState defaultPagerState = (DefaultPagerState) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                Function0 function0 = (Function0) obj;
                SVGAndroidRenderer instrument = ContextKt.getInstrument((Context) obj6);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map.get(list.get(defaultPagerState.getCurrentPage())), null, "next_button", null, null, 244);
                }
                AwaitKt.launch$default(coroutineScope, null, null, new PageActivity$onCreate$1$1$1(defaultPagerState, function0, continuation, 12), 3);
                break;
        }
        return unit;
    }
}
