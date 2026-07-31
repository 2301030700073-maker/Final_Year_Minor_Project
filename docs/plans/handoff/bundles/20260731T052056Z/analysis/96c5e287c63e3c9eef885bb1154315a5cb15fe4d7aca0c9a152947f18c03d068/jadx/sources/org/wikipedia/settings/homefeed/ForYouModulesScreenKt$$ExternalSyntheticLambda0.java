package org.wikipedia.settings.homefeed;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import org.wikipedia.compose.components.ToggleSettingItem;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.settings.homefeed.CommunityModuleType;
import org.wikipedia.settings.homefeed.ForYouModuleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouModulesScreenKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ ModulesViewModel f$1;
    public final /* synthetic */ MutableState f$2;
    public final /* synthetic */ MutableState f$3;

    public /* synthetic */ ForYouModulesScreenKt$$ExternalSyntheticLambda0(Context context, ModulesViewModel modulesViewModel, MutableState mutableState, MutableState mutableState2, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = modulesViewModel;
        this.f$2 = mutableState;
        this.f$3 = mutableState2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.Set] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        EmptySet emptySet = EmptySet.INSTANCE;
        MutableState mutableState = this.f$3;
        MutableState mutableState2 = this.f$2;
        ModulesViewModel modulesViewModel = this.f$1;
        Context context = this.f$0;
        String str = (String) obj;
        switch (i) {
            case 0:
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                str.getClass();
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, booleanValue ? "enable" : "disable", null, "feed_for_you", str, null, null, 242);
                }
                modulesViewModel.toggleModuleVisibility(str, booleanValue);
                if (!booleanValue) {
                    ?? r0 = (Set) modulesViewModel.hiddenModules.$$delegate_0.getValue();
                    if (r0 != 0) {
                        emptySet = r0;
                    }
                    LinkedHashSet plus = UuidKt.plus(emptySet, str);
                    ForYouModuleType.Companion.getClass();
                    ArrayList entries = ForYouModuleType.Companion.entries();
                    if (!entries.isEmpty()) {
                        Iterator it = entries.iterator();
                        while (it.hasNext()) {
                            if (!plus.contains(((ToggleSettingItem) it.next()).key)) {
                                break;
                            }
                        }
                    }
                    mutableState2.setValue(str);
                    mutableState.setValue(Boolean.TRUE);
                    break;
                }
                break;
            default:
                boolean booleanValue2 = ((Boolean) obj2).booleanValue();
                str.getClass();
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, booleanValue2 ? "enable" : "disable", null, "feed_community", str, null, null, 242);
                }
                modulesViewModel.toggleModuleVisibility(str, booleanValue2);
                if (!booleanValue2) {
                    ?? r02 = (Set) modulesViewModel.hiddenModules.$$delegate_0.getValue();
                    if (r02 != 0) {
                        emptySet = r02;
                    }
                    LinkedHashSet plus2 = UuidKt.plus(emptySet, str);
                    CommunityModuleType.Companion.getClass();
                    ArrayList entries2 = CommunityModuleType.Companion.entries();
                    if (!entries2.isEmpty()) {
                        Iterator it2 = entries2.iterator();
                        while (it2.hasNext()) {
                            if (!plus2.contains(((ToggleSettingItem) it2.next()).key)) {
                                break;
                            }
                        }
                    }
                    mutableState2.setValue(str);
                    mutableState.setValue(Boolean.TRUE);
                    break;
                }
                break;
        }
        return unit;
    }
}
