package org.wikipedia.settings.dev.playground;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import j$.time.Year;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Cache;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CategoryDeveloperPlayGround$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CategoryDeveloperPlayGround f$0;

    public /* synthetic */ CategoryDeveloperPlayGround$$ExternalSyntheticLambda0(CategoryDeveloperPlayGround categoryDeveloperPlayGround, int i) {
        this.$r8$classId = i;
        this.f$0 = categoryDeveloperPlayGround;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i2 = CategoryDeveloperPlayGround.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    CategoryDeveloperPlayGround categoryDeveloperPlayGround = this.f$0;
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-1951911153, new RandomActivity$$ExternalSyntheticLambda1(8, Updater.collectAsState(categoryDeveloperPlayGround.getViewModel().categoryState, gapComposer), categoryDeveloperPlayGround), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                String str = (String) obj;
                String str2 = (String) obj2;
                int i3 = CategoryDeveloperPlayGround.$r8$clinit;
                str.getClass();
                str2.getClass();
                boolean z = str.length() == 0 || str2.length() == 0;
                CategoryDeveloperPlayGround categoryDeveloperPlayGround2 = this.f$0;
                if (categoryDeveloperPlayGround2.validateInput(z)) {
                    CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround2.getViewModel();
                    int parseInt = Integer.parseInt(str);
                    int parseInt2 = Integer.parseInt(str2);
                    if (parseInt2 == Year.now().getValue()) {
                        parseInt2--;
                    }
                    int i4 = parseInt2;
                    CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(viewModel);
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    AwaitKt.launch$default(viewModelScope, DefaultIoScheduler.INSTANCE, null, new CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1(parseInt, viewModel, i4, categoryDeveloperPlayGround2, null), 2);
                    break;
                }
                break;
        }
        return unit;
    }
}
