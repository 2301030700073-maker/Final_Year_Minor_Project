package org.koin.java;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.lang.annotation.Annotation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.internal.ObjectSerializer;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;
import org.jetbrains.compose.resources.ImageResourcesKt;
import org.jetbrains.compose.resources.ResourceEnvironmentKt;
import org.jetbrains.compose.resources.ResourceReaderKt;
import org.koin.compose.ComposeContextWrapper;
import org.koin.core.Koin;
import org.koin.core.context.GlobalContext;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinJavaComponent$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinJavaComponent$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class);
                Koin koin = GlobalContext._koin;
                if (koin != null) {
                    return koin.scopeRegistry.rootScope.get(orCreateKotlinClass, null, null);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
                return null;
            case 1:
                return new ObjectSerializer("net.thunderbird.feature.thundermail.navigation.ThundermailRoute.SignInWithThundermail", ThundermailRoute.SignInWithThundermail.INSTANCE, new Annotation[0]);
            case 2:
                return (ImageBitmap) ImageResourcesKt.emptyImageBitmap$delegate.getValue();
            case 3:
                return ColorKt.m489ImageBitmapx__hDU$default(1, 1, 0, 28);
            case 4:
                return new ImageVector.Builder("emptyImageVector", 1.0f, 1.0f, 1.0f, 1.0f, 0L, 0, false, 224).build();
            case 5:
                return new BitmapPainter((ImageBitmap) ImageResourcesKt.emptyImageBitmap$delegate.getValue());
            case 6:
                return (Painter) ImageResourcesKt.emptySvgPainter$delegate.getValue();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return (ImageVector) ImageResourcesKt.emptyImageVector$delegate.getValue();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ResourceEnvironmentKt.DefaultComposeEnvironment;
            case 9:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ResourceReaderKt.LocalResourceReader;
                return DefaultAndroidResourceReader.INSTANCE;
            case 10:
                return "";
            case 11:
                throw new IllegalStateException("should not be used in favor of LocalKoinScopeContext");
            case BasicTextKt.ShiftMeta /* 12 */:
                throw new IllegalStateException("should not be used in favor of getKoin()");
            case 13:
                Koin koin2 = GlobalContext._koin;
                if (koin2 != null) {
                    return new ComposeContextWrapper(koin2.scopeRegistry.rootScope, new KoinJavaComponent$$ExternalSyntheticLambda0(15));
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
                return null;
            case 14:
                Koin koin3 = GlobalContext._koin;
                if (koin3 != null) {
                    return new ComposeContextWrapper(koin3, new KoinJavaComponent$$ExternalSyntheticLambda0(16));
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
                return null;
            case OffsetKt.Horizontal /* 15 */:
                Koin koin4 = GlobalContext._koin;
                if (koin4 != null) {
                    return koin4.scopeRegistry.rootScope;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
                return null;
            default:
                Koin koin5 = GlobalContext._koin;
                if (koin5 != null) {
                    return koin5;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
                return null;
        }
    }
}
