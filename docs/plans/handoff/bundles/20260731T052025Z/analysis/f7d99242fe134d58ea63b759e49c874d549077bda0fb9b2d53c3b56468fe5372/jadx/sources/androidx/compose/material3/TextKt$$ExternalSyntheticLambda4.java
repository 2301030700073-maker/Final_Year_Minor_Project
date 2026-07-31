package androidx.compose.material3;

import android.os.Build;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.material3.tokens.TypographyTokens;
import androidx.compose.material3.tokens.TypographyTokensKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.work.Data;
import java.util.BitSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.builders.ListBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextKt$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TextKt$$ExternalSyntheticLambda4(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = null;
        switch (i) {
            case 0:
                return TypographyTokensKt.DefaultTextStyle;
            case 1:
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                return Boolean.TRUE;
            case 2:
                return new Dp(48.0f);
            case 3:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = MaterialThemeKt._localMotionScheme;
                return Boolean.FALSE;
            case 4:
                return MotionScheme$StandardMotionSchemeImpl.INSTANCE;
            case 5:
                return UUID.randomUUID();
            case 6:
                return new RippleConfiguration();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new Shapes(ShapeDefaults.ExtraSmall, ShapeDefaults.Small, ShapeDefaults.Medium, ShapeDefaults.Large, ShapeDefaults.ExtraLarge);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                throw null;
            case 9:
                return new Dp(0.0f);
            case 10:
                return new Typography(TypographyTokens.DisplayLarge, TypographyTokens.DisplayMedium, TypographyTokens.DisplaySmall, TypographyTokens.HeadlineLarge, TypographyTokens.HeadlineMedium, TypographyTokens.HeadlineSmall, TypographyTokens.TitleLarge, TypographyTokens.TitleMedium, TypographyTokens.TitleSmall, TypographyTokens.BodyLarge, TypographyTokens.BodyMedium, TypographyTokens.BodySmall, TypographyTokens.LabelLarge, TypographyTokens.LabelMedium, TypographyTokens.LabelSmall);
            case 11:
                return new PullToRefreshStateImpl(new Animatable(Float.valueOf(0.0f), ArcSplineKt.FloatToVector, obj, 12));
            case BasicTextKt.ShiftMeta /* 12 */:
                ComposerKt.composeRuntimeError("Unexpected call to default provider");
                throw new SerializationException();
            case 13:
                throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
            case 14:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LocalRetainedValuesStoreKt.LocalRetainedValuesStore;
                return ForgetfulRetainedValuesStore.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                return new SaveableStateHolderImpl(new LinkedHashMap());
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = SaveableStateRegistryKt.LocalSaveableStateRegistry;
                return null;
            case 17:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = CompositionErrorContextKt.LocalCompositionErrorContext;
                return null;
            case 18:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = InspectionTablesKt.LocalInspectionTables;
                return null;
            case 19:
                return SpanStyleKt.DefaultColorForegroundStyle;
            case 20:
                return Boolean.valueOf(Build.BRAND.equals("google"));
            case 21:
                String str = "";
                try {
                    Class<?> cls = Class.forName("android.os.SystemProperties");
                    Object invoke = cls.getMethod("get", String.class, String.class).invoke(cls, "ro.build.backported_fixes.alias_bitset.long_list", "");
                    invoke.getClass();
                    str = (String) invoke;
                } catch (Exception unused) {
                }
                ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                Iterator it = StringsKt.split$default(str, new char[]{','}).iterator();
                while (it.hasNext()) {
                    try {
                        createListBuilder.add(Long.valueOf(Long.parseLong((String) it.next())));
                    } catch (NumberFormatException unused2) {
                    }
                }
                BitSet valueOf = BitSet.valueOf(CollectionsKt.toLongArray(IntOffsetKt.build(createListBuilder)));
                int size = valueOf.size();
                if (size == 0) {
                    return EmptySet.INSTANCE;
                }
                SetBuilder setBuilder = new SetBuilder(size);
                for (int i2 = 0; i2 >= 0; i2 = valueOf.nextSetBit(i2 + 1)) {
                    if (valueOf.get(i2)) {
                        setBuilder.add(Integer.valueOf(i2));
                    }
                    if (i2 == Integer.MAX_VALUE) {
                        return Validate.build(setBuilder);
                    }
                }
                return Validate.build(setBuilder);
            case 22:
                throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
            case 23:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalViewModelStoreOwner.LocalViewModelStoreOwner;
                return null;
            case 24:
                return new SavedStateViewModelFactory();
            case 25:
                Data.Builder builder = new Data.Builder(3);
                builder.addInitializer(Reflection.getOrCreateKotlinClass(NavBackStackEntryImpl.SavedStateViewModel.class), new RoomDatabase$$ExternalSyntheticLambda0(25));
                return builder.build();
            case 26:
            case 27:
                return unit;
            case 28:
                return Boolean.TRUE;
            default:
                throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
        }
    }

    public /* synthetic */ TextKt$$ExternalSyntheticLambda4(int i, Object obj) {
        this.$r8$classId = i;
    }
}
