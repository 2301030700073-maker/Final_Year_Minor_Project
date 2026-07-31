package net.newpipe.app.navigation;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import androidx.work.Data$$ExternalSyntheticLambda0;
import com.russhwolf.settings.SharedPreferencesSettings;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.internal.ThreadLocalElement;
import kotlinx.coroutines.internal.ThreadState;
import kotlinx.serialization.json.Json;
import net.newpipe.app.platform.AndroidBuildInfo;
import net.newpipe.app.platform.AndroidResourceHandler;
import net.newpipe.app.platform.AndroidShareHandler;
import net.newpipe.app.platform.BuildInfo;
import net.newpipe.app.platform.ResourceHandler;
import net.newpipe.app.viewmodel.about.AboutViewModel;
import net.newpipe.app.viewmodel.settings.SettingsViewModel;
import newpipe.shared.generated.resources.Drawable0_commonMainKt;
import newpipe.shared.generated.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.AndroidContextProviderKt;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.ImageResourcesKt;
import org.jetbrains.compose.resources.StringResource;
import org.jetbrains.compose.resources.StringResourcesKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NavModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = 10;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new Navigator((Destination) scope.resolve(Reflection.getOrCreateKotlinClass(Destination.class), null), (Function0) scope.resolve(Reflection.getOrCreateKotlinClass(Function0.class), null));
            case 1:
                ThreadState threadState = (ThreadState) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                if (element instanceof ThreadLocalElement) {
                    ThreadLocalElement threadLocalElement = (ThreadLocalElement) element;
                    CoroutineContext coroutineContext = threadState.context;
                    Object updateThreadContext = threadLocalElement.updateThreadContext();
                    Object[] objArr = threadState.values;
                    int i2 = threadState.i;
                    objArr[i2] = updateThreadContext;
                    ThreadLocalElement[] threadLocalElementArr = threadState.elements;
                    threadState.i = i2 + 1;
                    threadLocalElementArr[i2] = threadLocalElement;
                }
                return threadState;
            case 2:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return Room.Json$default(new Data$$ExternalSyntheticLambda0(29));
            case 3:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                Context context = (Context) scope2.resolve(Reflection.getOrCreateKotlinClass(Context.class), null);
                SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
                sharedPreferences.getClass();
                return new SharedPreferencesSettings(sharedPreferences);
            case 4:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidBuildInfo((Context) scope3.resolve(Reflection.getOrCreateKotlinClass(Context.class), null));
            case 5:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidResourceHandler((Context) scope4.resolve(Reflection.getOrCreateKotlinClass(Context.class), null));
            case 6:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidShareHandler((Context) scope5.resolve(Reflection.getOrCreateKotlinClass(Context.class), null));
            case 7:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    IconKt.m141Iconww6aTOc(ImageResourcesKt.painterResource((DrawableResource) Drawable0_commonMainKt.ic_search$delegate.getValue(), gapComposer), StringResourcesKt.stringResource((StringResource) String0_commonMainKt.search$delegate.getValue(), gapComposer), null, 0L, gapComposer, 8);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 8:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AboutViewModel((Json) scope6.resolve(Reflection.getOrCreateKotlinClass(Json.class), null), (ResourceHandler) scope6.resolve(Reflection.getOrCreateKotlinClass(ResourceHandler.class), null));
            case 9:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsViewModel((BuildInfo) scope7.resolve(Reflection.getOrCreateKotlinClass(BuildInfo.class), null));
            default:
                ((Integer) obj2).getClass();
                AndroidContextProviderKt.PreviewContextConfigurationEffect((Composer) obj, Updater.updateChangedFlags(1));
                return unit;
        }
    }

    public /* synthetic */ NavModuleKt$$ExternalSyntheticLambda1(int i, byte b) {
        this.$r8$classId = i;
    }
}
