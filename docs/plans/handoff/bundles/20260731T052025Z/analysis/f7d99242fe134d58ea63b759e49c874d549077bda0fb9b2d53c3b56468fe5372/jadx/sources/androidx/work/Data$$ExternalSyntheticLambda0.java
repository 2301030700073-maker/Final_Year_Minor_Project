package androidx.work;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.ChangeSize;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterExitTransitionKt$slideInVertically$2;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.Fade;
import androidx.compose.animation.Scale;
import androidx.compose.animation.Slide;
import androidx.compose.animation.TransitionData;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.IntOffset;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.work.Data;
import androidx.work.WorkInfo;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import app.k9mail.auth.K9OAuthConfigurationFactory;
import app.k9mail.core.android.common.contact.AndroidContactPermissionResolver;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.core.android.common.contact.ContentResolverContactDataSource;
import app.k9mail.core.ui.compose.designsystem.molecule.ContentKey;
import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.FeatureModuleKt;
import app.k9mail.feature.migration.launcher.FeatureMigrationModuleKt;
import app.k9mail.feature.onboarding.migration.OnboardingMigrationModuleKt;
import app.k9mail.feature.telemetry.TelemetryModuleKt;
import app.k9mail.featureflag.K9FeatureFlagFactory;
import app.k9mail.provider.ProviderModuleKt;
import app.k9mail.widget.WidgetModuleKt;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.DefaultAppConfig;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.app.common.AppCommonModuleKt;
import net.thunderbird.core.common.cache.Cache;
import net.thunderbird.core.featureflag.NoOpFeatureFlagOverrides;
import net.thunderbird.feature.account.settings.AccountSettingsModuleKt;
import net.thunderbird.feature.funding.FeatureFundingModuleKt;
import net.thunderbird.feature.mail.message.list.internal.FeatureMessageListModuleKt;
import net.thunderbird.feature.thundermail.thunderbird.inject.FeatureThundermailModuleKt;
import org.jsoup.helper.Validate;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Data$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Data$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    private final Object invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(Object obj) {
        int i;
        Integer valueOf;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
        try {
            prepare.bindLong(1, 200L);
            int columnIndexOrThrow = ActionBar.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = ActionBar.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = ActionBar.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = ActionBar.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = ActionBar.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = ActionBar.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = ActionBar.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = ActionBar.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = ActionBar.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = ActionBar.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = ActionBar.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = ActionBar.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = ActionBar.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = ActionBar.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = ActionBar.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = ActionBar.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = ActionBar.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = ActionBar.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = ActionBar.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = ActionBar.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = ActionBar.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = ActionBar.getColumnIndexOrThrow(prepare, "stop_reason");
            int columnIndexOrThrow23 = ActionBar.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = ActionBar.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = ActionBar.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = ActionBar.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = ActionBar.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = ActionBar.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = ActionBar.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = ActionBar.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = ActionBar.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = ActionBar.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = ActionBar.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text = prepare.getText(columnIndexOrThrow);
                int i2 = columnIndexOrThrow13;
                int i3 = columnIndexOrThrow14;
                WorkInfo.State intToState = SQLite.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text2 = prepare.getText(columnIndexOrThrow3);
                String text3 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data data = Data.EMPTY;
                Data fromByteArray = Data.Companion.fromByteArray(blob);
                Data fromByteArray2 = Data.Companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                long j = prepare.getLong(columnIndexOrThrow7);
                long j2 = prepare.getLong(columnIndexOrThrow8);
                long j3 = prepare.getLong(columnIndexOrThrow9);
                int i4 = (int) prepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow;
                int i6 = columnIndexOrThrow2;
                BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                long j4 = prepare.getLong(columnIndexOrThrow12);
                long j5 = prepare.getLong(i2);
                long j6 = prepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = prepare.getLong(i7);
                columnIndexOrThrow15 = i7;
                int i8 = columnIndexOrThrow16;
                int i9 = columnIndexOrThrow3;
                boolean z = ((int) prepare.getLong(i8)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = (int) prepare.getLong(i12);
                int i14 = columnIndexOrThrow19;
                int i15 = (int) prepare.getLong(i14);
                int i16 = columnIndexOrThrow20;
                long j8 = prepare.getLong(i16);
                int i17 = columnIndexOrThrow21;
                int i18 = (int) prepare.getLong(i17);
                columnIndexOrThrow21 = i17;
                int i19 = columnIndexOrThrow22;
                int i20 = (int) prepare.getLong(i19);
                int i21 = columnIndexOrThrow23;
                Boolean bool = null;
                String text4 = prepare.isNull(i21) ? null : prepare.getText(i21);
                int i22 = columnIndexOrThrow24;
                if (prepare.isNull(i22)) {
                    i = i21;
                    columnIndexOrThrow22 = i19;
                    valueOf = null;
                } else {
                    i = i21;
                    columnIndexOrThrow22 = i19;
                    valueOf = Integer.valueOf((int) prepare.getLong(i22));
                }
                if (valueOf != null) {
                    bool = Boolean.valueOf(valueOf.intValue() != 0);
                }
                Boolean bool2 = bool;
                int i23 = columnIndexOrThrow25;
                NetworkType intToNetworkType = SQLite.intToNetworkType((int) prepare.getLong(i23));
                int i24 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = SQLite.toNetworkRequest$work_runtime_release(prepare.getBlob(i24));
                int i25 = columnIndexOrThrow27;
                boolean z2 = ((int) prepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow28;
                boolean z3 = ((int) prepare.getLong(i26)) != 0;
                int i27 = columnIndexOrThrow29;
                boolean z4 = ((int) prepare.getLong(i27)) != 0;
                columnIndexOrThrow29 = i27;
                int i28 = columnIndexOrThrow30;
                int i29 = columnIndexOrThrow31;
                int i30 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i29;
                int i31 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, ((int) prepare.getLong(i28)) != 0, prepare.getLong(i29), prepare.getLong(i30), SQLite.byteArrayToSetOfTriggers(prepare.getBlob(i31))), i4, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i13, i15, j8, i18, i20, text4, bool2));
                columnIndexOrThrow28 = i26;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow18 = i12;
                columnIndexOrThrow19 = i14;
                columnIndexOrThrow20 = i16;
                columnIndexOrThrow23 = i;
                columnIndexOrThrow24 = i22;
                columnIndexOrThrow25 = i23;
                columnIndexOrThrow26 = i24;
                columnIndexOrThrow27 = i25;
                columnIndexOrThrow33 = i31;
                columnIndexOrThrow32 = i30;
                columnIndexOrThrow30 = i28;
                columnIndexOrThrow = i5;
                columnIndexOrThrow3 = i9;
                columnIndexOrThrow13 = i2;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow2 = i6;
                columnIndexOrThrow16 = i8;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    private final Object invoke$app$k9mail$K9KoinModuleKt$$ExternalSyntheticLambda1(Object obj) {
        Module module = (Module) obj;
        module.getClass();
        int i = 0;
        Module[] moduleArr = {AppCommonModuleKt.appCommonModule};
        ArrayList arrayList = module.includedModules;
        CollectionsKt.addAll(arrayList, moduleArr);
        CollectionsKt.addAll(arrayList, new Module[]{WidgetModuleKt.widgetModule});
        CollectionsKt.addAll(arrayList, new Module[]{FeatureModuleKt.featureModule});
        CollectionsKt.addAll(arrayList, new Module[]{ProviderModuleKt.providerModule});
        StringQualifier stringQualifier = new StringQualifier("ClientInfoAppName");
        K9KoinModuleKt$$ExternalSyntheticLambda2 k9KoinModuleKt$$ExternalSyntheticLambda2 = new K9KoinModuleKt$$ExternalSyntheticLambda2(i);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(String.class);
        StringQualifier stringQualifier2 = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Singleton;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass, stringQualifier, k9KoinModuleKt$$ExternalSyntheticLambda2, kind)));
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(String.class), new StringQualifier("ClientInfoAppVersion"), new K9KoinModuleKt$$ExternalSyntheticLambda2(25), kind)));
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultAppConfig.class), null, new K9KoinModuleKt$$ExternalSyntheticLambda2(26), kind)));
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(K9OAuthConfigurationFactory.class), null, new K9KoinModuleKt$$ExternalSyntheticLambda2(27), kind)));
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(K9FeatureFlagFactory.class), null, new K9KoinModuleKt$$ExternalSyntheticLambda2(28), kind)));
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(Map.class), new StringQualifier("developmentBackends"), new ReleaseConfigKt$$ExternalSyntheticLambda0(i), kind)));
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(List.class), new StringQualifier("extraAutoDiscoveries"), new ReleaseConfigKt$$ExternalSyntheticLambda0(17), kind)));
        ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(NoOpFeatureFlagOverrides.class), null, new ReleaseConfigKt$$ExternalSyntheticLambda0(18), kind), module);
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$core$android$common$contact$ContactKoinModuleKt$$ExternalSyntheticLambda1(Object obj) {
        Module module = (Module) obj;
        module.getClass();
        StringQualifier stringQualifier = new StringQualifier("ContactCache");
        ReleaseConfigKt$$ExternalSyntheticLambda0 releaseConfigKt$$ExternalSyntheticLambda0 = new ReleaseConfigKt$$ExternalSyntheticLambda0(2);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Cache.class);
        StringQualifier stringQualifier2 = ScopeRegistry.rootScopeQualifier;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass, stringQualifier, releaseConfigKt$$ExternalSyntheticLambda0, Kind.Singleton)));
        ReleaseConfigKt$$ExternalSyntheticLambda0 releaseConfigKt$$ExternalSyntheticLambda02 = new ReleaseConfigKt$$ExternalSyntheticLambda0(3);
        ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(ContentResolverContactDataSource.class);
        Kind kind = Kind.Factory;
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass2, null, releaseConfigKt$$ExternalSyntheticLambda02, kind)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(ContactRepository.class), null, new ReleaseConfigKt$$ExternalSyntheticLambda0(4), kind)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(AndroidContactPermissionResolver.class), null, new ReleaseConfigKt$$ExternalSyntheticLambda0(5), kind)));
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$atom$text$TextBodyMediumKt$$ExternalSyntheticLambda2(Object obj) {
        ((TextLayoutResult) obj).getClass();
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda0(Object obj) {
        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
        semanticsPropertyReceiver.getClass();
        ContentType.Companion.getClass();
        SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.EmailAddress);
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedFakeSelectKt$$ExternalSyntheticLambda0(Object obj) {
        ((String) obj).getClass();
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedSelectKt$$ExternalSyntheticLambda3(Object obj) {
        ((String) obj).getClass();
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$molecule$ContentLoadingErrorViewKt$$ExternalSyntheticLambda0(Object obj) {
        LoadingErrorState loadingErrorState = (LoadingErrorState) obj;
        loadingErrorState.getClass();
        return new ContentKey(loadingErrorState.getError(), loadingErrorState.isLoading());
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda0(Object obj) {
        ((AnimatedContentTransitionScopeImpl) obj).getClass();
        Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda0 = new Data$$ExternalSyntheticLambda0(25);
        TwoWayConverterImpl twoWayConverterImpl = EnterExitTransitionKt.TransformOriginVectorConverter;
        Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
        EnterTransitionImpl enterTransitionImpl = new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(0, data$$ExternalSyntheticLambda0), ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1)), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
        Data$$ExternalSyntheticLambda0 data$$ExternalSyntheticLambda02 = new Data$$ExternalSyntheticLambda0(26);
        return CrossfadeKt.togetherWith(enterTransitionImpl, new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new EnterExitTransitionKt$slideInVertically$2(3, data$$ExternalSyntheticLambda02), ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1)), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125)));
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda2(Object obj) {
        Integer num = (Integer) obj;
        num.intValue();
        return num;
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda3(Object obj) {
        return Integer.valueOf(-((Integer) obj).intValue());
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$organism$banner$inline$ErrorBannerInlineNotificationCardKt$$ExternalSyntheticLambda0(Object obj) {
        ((Boolean) obj).getClass();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Integer valueOf;
        Boolean bool;
        Integer valueOf2;
        Boolean bool2;
        Integer valueOf3;
        Boolean bool3;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        r4 = false;
        boolean z = false;
        switch (i) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                StringBuilder m = Config.CC.m(str, " : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    value.getClass();
                }
                m.append(value);
                return m.toString();
            case 1:
                SQLiteStatement sQLiteStatement = (SQLiteStatement) obj;
                sQLiteStatement.getClass();
                SetBuilder setBuilder = new SetBuilder();
                while (sQLiteStatement.step()) {
                    setBuilder.add(Integer.valueOf((int) sQLiteStatement.getLong(0)));
                }
                return Validate.build(setBuilder);
            case 2:
                WindowMetricsCalculator windowMetricsCalculator = (WindowMetricsCalculator) obj;
                windowMetricsCalculator.getClass();
                return windowMetricsCalculator;
            case 3:
                ConstraintController constraintController = (ConstraintController) obj;
                constraintController.getClass();
                return constraintController.getClass().getSimpleName();
            case 4:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT DISTINCT work_spec_id FROM SystemIdInfo");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(prepare.getText(0));
                    }
                    return arrayList;
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                try {
                    sQLiteConnection2.prepare("DELETE FROM WorkProgress").step();
                    return unit;
                } finally {
                }
            case 6:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                SQLiteStatement prepare2 = sQLiteConnection3.prepare("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
                try {
                    int columnIndexOrThrow = ActionBar.getColumnIndexOrThrow(prepare2, "id");
                    int columnIndexOrThrow2 = ActionBar.getColumnIndexOrThrow(prepare2, "state");
                    int columnIndexOrThrow3 = ActionBar.getColumnIndexOrThrow(prepare2, "worker_class_name");
                    int columnIndexOrThrow4 = ActionBar.getColumnIndexOrThrow(prepare2, "input_merger_class_name");
                    int columnIndexOrThrow5 = ActionBar.getColumnIndexOrThrow(prepare2, "input");
                    int columnIndexOrThrow6 = ActionBar.getColumnIndexOrThrow(prepare2, "output");
                    int columnIndexOrThrow7 = ActionBar.getColumnIndexOrThrow(prepare2, "initial_delay");
                    int columnIndexOrThrow8 = ActionBar.getColumnIndexOrThrow(prepare2, "interval_duration");
                    int columnIndexOrThrow9 = ActionBar.getColumnIndexOrThrow(prepare2, "flex_duration");
                    int columnIndexOrThrow10 = ActionBar.getColumnIndexOrThrow(prepare2, "run_attempt_count");
                    int columnIndexOrThrow11 = ActionBar.getColumnIndexOrThrow(prepare2, "backoff_policy");
                    int columnIndexOrThrow12 = ActionBar.getColumnIndexOrThrow(prepare2, "backoff_delay_duration");
                    int columnIndexOrThrow13 = ActionBar.getColumnIndexOrThrow(prepare2, "last_enqueue_time");
                    int columnIndexOrThrow14 = ActionBar.getColumnIndexOrThrow(prepare2, "minimum_retention_duration");
                    int columnIndexOrThrow15 = ActionBar.getColumnIndexOrThrow(prepare2, "schedule_requested_at");
                    int columnIndexOrThrow16 = ActionBar.getColumnIndexOrThrow(prepare2, "run_in_foreground");
                    int columnIndexOrThrow17 = ActionBar.getColumnIndexOrThrow(prepare2, "out_of_quota_policy");
                    int columnIndexOrThrow18 = ActionBar.getColumnIndexOrThrow(prepare2, "period_count");
                    int columnIndexOrThrow19 = ActionBar.getColumnIndexOrThrow(prepare2, "generation");
                    int columnIndexOrThrow20 = ActionBar.getColumnIndexOrThrow(prepare2, "next_schedule_time_override");
                    int columnIndexOrThrow21 = ActionBar.getColumnIndexOrThrow(prepare2, "next_schedule_time_override_generation");
                    int columnIndexOrThrow22 = ActionBar.getColumnIndexOrThrow(prepare2, "stop_reason");
                    int columnIndexOrThrow23 = ActionBar.getColumnIndexOrThrow(prepare2, "trace_tag");
                    int columnIndexOrThrow24 = ActionBar.getColumnIndexOrThrow(prepare2, "backoff_on_system_interruptions");
                    int columnIndexOrThrow25 = ActionBar.getColumnIndexOrThrow(prepare2, "required_network_type");
                    int columnIndexOrThrow26 = ActionBar.getColumnIndexOrThrow(prepare2, "required_network_request");
                    int columnIndexOrThrow27 = ActionBar.getColumnIndexOrThrow(prepare2, "requires_charging");
                    int columnIndexOrThrow28 = ActionBar.getColumnIndexOrThrow(prepare2, "requires_device_idle");
                    int columnIndexOrThrow29 = ActionBar.getColumnIndexOrThrow(prepare2, "requires_battery_not_low");
                    int columnIndexOrThrow30 = ActionBar.getColumnIndexOrThrow(prepare2, "requires_storage_not_low");
                    int columnIndexOrThrow31 = ActionBar.getColumnIndexOrThrow(prepare2, "trigger_content_update_delay");
                    int columnIndexOrThrow32 = ActionBar.getColumnIndexOrThrow(prepare2, "trigger_max_content_delay");
                    int columnIndexOrThrow33 = ActionBar.getColumnIndexOrThrow(prepare2, "content_uri_triggers");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare2.step()) {
                        String text = prepare2.getText(columnIndexOrThrow);
                        int i2 = columnIndexOrThrow14;
                        int i3 = columnIndexOrThrow13;
                        WorkInfo.State intToState = SQLite.intToState((int) prepare2.getLong(columnIndexOrThrow2));
                        String text2 = prepare2.getText(columnIndexOrThrow3);
                        String text3 = prepare2.getText(columnIndexOrThrow4);
                        byte[] blob = prepare2.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = Data.Companion.fromByteArray(blob);
                        Data fromByteArray2 = Data.Companion.fromByteArray(prepare2.getBlob(columnIndexOrThrow6));
                        long j = prepare2.getLong(columnIndexOrThrow7);
                        long j2 = prepare2.getLong(columnIndexOrThrow8);
                        long j3 = prepare2.getLong(columnIndexOrThrow9);
                        int i4 = (int) prepare2.getLong(columnIndexOrThrow10);
                        int i5 = columnIndexOrThrow4;
                        int i6 = columnIndexOrThrow3;
                        BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare2.getLong(columnIndexOrThrow11));
                        long j4 = prepare2.getLong(columnIndexOrThrow12);
                        long j5 = prepare2.getLong(i3);
                        long j6 = prepare2.getLong(i2);
                        int i7 = columnIndexOrThrow15;
                        long j7 = prepare2.getLong(i7);
                        columnIndexOrThrow15 = i7;
                        int i8 = columnIndexOrThrow16;
                        int i9 = columnIndexOrThrow2;
                        boolean z2 = ((int) prepare2.getLong(i8)) != 0;
                        int i10 = columnIndexOrThrow17;
                        int i11 = columnIndexOrThrow;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare2.getLong(i10));
                        int i12 = columnIndexOrThrow18;
                        int i13 = (int) prepare2.getLong(i12);
                        int i14 = columnIndexOrThrow19;
                        int i15 = (int) prepare2.getLong(i14);
                        int i16 = columnIndexOrThrow20;
                        long j8 = prepare2.getLong(i16);
                        int i17 = columnIndexOrThrow21;
                        int i18 = (int) prepare2.getLong(i17);
                        columnIndexOrThrow21 = i17;
                        int i19 = columnIndexOrThrow22;
                        int i20 = (int) prepare2.getLong(i19);
                        int i21 = columnIndexOrThrow23;
                        String text4 = prepare2.isNull(i21) ? null : prepare2.getText(i21);
                        int i22 = columnIndexOrThrow24;
                        if (prepare2.isNull(i22)) {
                            columnIndexOrThrow23 = i21;
                            columnIndexOrThrow22 = i19;
                            valueOf = null;
                        } else {
                            columnIndexOrThrow23 = i21;
                            columnIndexOrThrow22 = i19;
                            valueOf = Integer.valueOf((int) prepare2.getLong(i22));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        int i23 = columnIndexOrThrow25;
                        NetworkType intToNetworkType = SQLite.intToNetworkType((int) prepare2.getLong(i23));
                        int i24 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = SQLite.toNetworkRequest$work_runtime_release(prepare2.getBlob(i24));
                        int i25 = columnIndexOrThrow27;
                        boolean z3 = ((int) prepare2.getLong(i25)) != 0;
                        int i26 = columnIndexOrThrow28;
                        boolean z4 = ((int) prepare2.getLong(i26)) != 0;
                        int i27 = columnIndexOrThrow29;
                        boolean z5 = ((int) prepare2.getLong(i27)) != 0;
                        columnIndexOrThrow29 = i27;
                        int i28 = columnIndexOrThrow30;
                        int i29 = columnIndexOrThrow31;
                        int i30 = columnIndexOrThrow32;
                        columnIndexOrThrow31 = i29;
                        int i31 = columnIndexOrThrow33;
                        arrayList2.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z3, z4, z5, ((int) prepare2.getLong(i28)) != 0, prepare2.getLong(i29), prepare2.getLong(i30), SQLite.byteArrayToSetOfTriggers(prepare2.getBlob(i31))), i4, intToBackoffPolicy, j4, j5, j6, j7, z2, intToOutOfQuotaPolicy, i13, i15, j8, i18, i20, text4, bool));
                        columnIndexOrThrow28 = i26;
                        columnIndexOrThrow = i11;
                        columnIndexOrThrow17 = i10;
                        columnIndexOrThrow18 = i12;
                        columnIndexOrThrow19 = i14;
                        columnIndexOrThrow20 = i16;
                        columnIndexOrThrow24 = i22;
                        columnIndexOrThrow25 = i23;
                        columnIndexOrThrow26 = i24;
                        columnIndexOrThrow27 = i25;
                        columnIndexOrThrow33 = i31;
                        columnIndexOrThrow32 = i30;
                        columnIndexOrThrow30 = i28;
                        columnIndexOrThrow3 = i6;
                        columnIndexOrThrow13 = i3;
                        columnIndexOrThrow14 = i2;
                        columnIndexOrThrow4 = i5;
                        columnIndexOrThrow2 = i9;
                        columnIndexOrThrow16 = i8;
                    }
                    return arrayList2;
                } finally {
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                SQLiteStatement prepare3 = sQLiteConnection4.prepare("SELECT * FROM workspec WHERE state=1");
                try {
                    int columnIndexOrThrow34 = ActionBar.getColumnIndexOrThrow(prepare3, "id");
                    int columnIndexOrThrow35 = ActionBar.getColumnIndexOrThrow(prepare3, "state");
                    int columnIndexOrThrow36 = ActionBar.getColumnIndexOrThrow(prepare3, "worker_class_name");
                    int columnIndexOrThrow37 = ActionBar.getColumnIndexOrThrow(prepare3, "input_merger_class_name");
                    int columnIndexOrThrow38 = ActionBar.getColumnIndexOrThrow(prepare3, "input");
                    int columnIndexOrThrow39 = ActionBar.getColumnIndexOrThrow(prepare3, "output");
                    int columnIndexOrThrow40 = ActionBar.getColumnIndexOrThrow(prepare3, "initial_delay");
                    int columnIndexOrThrow41 = ActionBar.getColumnIndexOrThrow(prepare3, "interval_duration");
                    int columnIndexOrThrow42 = ActionBar.getColumnIndexOrThrow(prepare3, "flex_duration");
                    int columnIndexOrThrow43 = ActionBar.getColumnIndexOrThrow(prepare3, "run_attempt_count");
                    int columnIndexOrThrow44 = ActionBar.getColumnIndexOrThrow(prepare3, "backoff_policy");
                    int columnIndexOrThrow45 = ActionBar.getColumnIndexOrThrow(prepare3, "backoff_delay_duration");
                    int columnIndexOrThrow46 = ActionBar.getColumnIndexOrThrow(prepare3, "last_enqueue_time");
                    int columnIndexOrThrow47 = ActionBar.getColumnIndexOrThrow(prepare3, "minimum_retention_duration");
                    int columnIndexOrThrow48 = ActionBar.getColumnIndexOrThrow(prepare3, "schedule_requested_at");
                    int columnIndexOrThrow49 = ActionBar.getColumnIndexOrThrow(prepare3, "run_in_foreground");
                    int columnIndexOrThrow50 = ActionBar.getColumnIndexOrThrow(prepare3, "out_of_quota_policy");
                    int columnIndexOrThrow51 = ActionBar.getColumnIndexOrThrow(prepare3, "period_count");
                    int columnIndexOrThrow52 = ActionBar.getColumnIndexOrThrow(prepare3, "generation");
                    int columnIndexOrThrow53 = ActionBar.getColumnIndexOrThrow(prepare3, "next_schedule_time_override");
                    int columnIndexOrThrow54 = ActionBar.getColumnIndexOrThrow(prepare3, "next_schedule_time_override_generation");
                    int columnIndexOrThrow55 = ActionBar.getColumnIndexOrThrow(prepare3, "stop_reason");
                    int columnIndexOrThrow56 = ActionBar.getColumnIndexOrThrow(prepare3, "trace_tag");
                    int columnIndexOrThrow57 = ActionBar.getColumnIndexOrThrow(prepare3, "backoff_on_system_interruptions");
                    int columnIndexOrThrow58 = ActionBar.getColumnIndexOrThrow(prepare3, "required_network_type");
                    int columnIndexOrThrow59 = ActionBar.getColumnIndexOrThrow(prepare3, "required_network_request");
                    int columnIndexOrThrow60 = ActionBar.getColumnIndexOrThrow(prepare3, "requires_charging");
                    int columnIndexOrThrow61 = ActionBar.getColumnIndexOrThrow(prepare3, "requires_device_idle");
                    int columnIndexOrThrow62 = ActionBar.getColumnIndexOrThrow(prepare3, "requires_battery_not_low");
                    int columnIndexOrThrow63 = ActionBar.getColumnIndexOrThrow(prepare3, "requires_storage_not_low");
                    int columnIndexOrThrow64 = ActionBar.getColumnIndexOrThrow(prepare3, "trigger_content_update_delay");
                    int columnIndexOrThrow65 = ActionBar.getColumnIndexOrThrow(prepare3, "trigger_max_content_delay");
                    int columnIndexOrThrow66 = ActionBar.getColumnIndexOrThrow(prepare3, "content_uri_triggers");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare3.step()) {
                        String text5 = prepare3.getText(columnIndexOrThrow34);
                        int i32 = columnIndexOrThrow47;
                        int i33 = columnIndexOrThrow46;
                        WorkInfo.State intToState2 = SQLite.intToState((int) prepare3.getLong(columnIndexOrThrow35));
                        String text6 = prepare3.getText(columnIndexOrThrow36);
                        String text7 = prepare3.getText(columnIndexOrThrow37);
                        byte[] blob2 = prepare3.getBlob(columnIndexOrThrow38);
                        Data data2 = Data.EMPTY;
                        Data fromByteArray3 = Data.Companion.fromByteArray(blob2);
                        Data fromByteArray4 = Data.Companion.fromByteArray(prepare3.getBlob(columnIndexOrThrow39));
                        long j9 = prepare3.getLong(columnIndexOrThrow40);
                        long j10 = prepare3.getLong(columnIndexOrThrow41);
                        long j11 = prepare3.getLong(columnIndexOrThrow42);
                        int i34 = (int) prepare3.getLong(columnIndexOrThrow43);
                        int i35 = columnIndexOrThrow37;
                        int i36 = columnIndexOrThrow36;
                        BackoffPolicy intToBackoffPolicy2 = SQLite.intToBackoffPolicy((int) prepare3.getLong(columnIndexOrThrow44));
                        long j12 = prepare3.getLong(columnIndexOrThrow45);
                        long j13 = prepare3.getLong(i33);
                        long j14 = prepare3.getLong(i32);
                        int i37 = columnIndexOrThrow48;
                        long j15 = prepare3.getLong(i37);
                        int i38 = columnIndexOrThrow35;
                        int i39 = columnIndexOrThrow49;
                        boolean z6 = ((int) prepare3.getLong(i39)) != 0;
                        int i40 = columnIndexOrThrow34;
                        int i41 = columnIndexOrThrow50;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy2 = SQLite.intToOutOfQuotaPolicy((int) prepare3.getLong(i41));
                        columnIndexOrThrow50 = i41;
                        int i42 = columnIndexOrThrow51;
                        int i43 = (int) prepare3.getLong(i42);
                        columnIndexOrThrow51 = i42;
                        int i44 = columnIndexOrThrow52;
                        int i45 = (int) prepare3.getLong(i44);
                        int i46 = columnIndexOrThrow53;
                        long j16 = prepare3.getLong(i46);
                        int i47 = columnIndexOrThrow54;
                        int i48 = (int) prepare3.getLong(i47);
                        columnIndexOrThrow54 = i47;
                        int i49 = columnIndexOrThrow55;
                        int i50 = (int) prepare3.getLong(i49);
                        int i51 = columnIndexOrThrow56;
                        String text8 = prepare3.isNull(i51) ? null : prepare3.getText(i51);
                        int i52 = columnIndexOrThrow57;
                        if (prepare3.isNull(i52)) {
                            columnIndexOrThrow56 = i51;
                            columnIndexOrThrow55 = i49;
                            valueOf2 = null;
                        } else {
                            columnIndexOrThrow56 = i51;
                            columnIndexOrThrow55 = i49;
                            valueOf2 = Integer.valueOf((int) prepare3.getLong(i52));
                        }
                        if (valueOf2 != null) {
                            bool2 = Boolean.valueOf(valueOf2.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        int i53 = columnIndexOrThrow58;
                        NetworkType intToNetworkType2 = SQLite.intToNetworkType((int) prepare3.getLong(i53));
                        int i54 = columnIndexOrThrow59;
                        NetworkRequestCompat networkRequest$work_runtime_release2 = SQLite.toNetworkRequest$work_runtime_release(prepare3.getBlob(i54));
                        int i55 = columnIndexOrThrow60;
                        boolean z7 = ((int) prepare3.getLong(i55)) != 0;
                        int i56 = columnIndexOrThrow61;
                        boolean z8 = ((int) prepare3.getLong(i56)) != 0;
                        int i57 = columnIndexOrThrow62;
                        boolean z9 = ((int) prepare3.getLong(i57)) != 0;
                        columnIndexOrThrow62 = i57;
                        int i58 = columnIndexOrThrow63;
                        int i59 = columnIndexOrThrow64;
                        int i60 = columnIndexOrThrow65;
                        columnIndexOrThrow64 = i59;
                        int i61 = columnIndexOrThrow66;
                        arrayList3.add(new WorkSpec(text5, intToState2, text6, text7, fromByteArray3, fromByteArray4, j9, j10, j11, new Constraints(networkRequest$work_runtime_release2, intToNetworkType2, z7, z8, z9, ((int) prepare3.getLong(i58)) != 0, prepare3.getLong(i59), prepare3.getLong(i60), SQLite.byteArrayToSetOfTriggers(prepare3.getBlob(i61))), i34, intToBackoffPolicy2, j12, j13, j14, j15, z6, intToOutOfQuotaPolicy2, i43, i45, j16, i48, i50, text8, bool2));
                        columnIndexOrThrow34 = i40;
                        columnIndexOrThrow49 = i39;
                        columnIndexOrThrow52 = i44;
                        columnIndexOrThrow53 = i46;
                        columnIndexOrThrow57 = i52;
                        columnIndexOrThrow58 = i53;
                        columnIndexOrThrow59 = i54;
                        columnIndexOrThrow60 = i55;
                        columnIndexOrThrow61 = i56;
                        columnIndexOrThrow66 = i61;
                        columnIndexOrThrow65 = i60;
                        columnIndexOrThrow63 = i58;
                        columnIndexOrThrow47 = i32;
                        columnIndexOrThrow36 = i36;
                        columnIndexOrThrow37 = i35;
                        columnIndexOrThrow35 = i38;
                        columnIndexOrThrow48 = i37;
                        columnIndexOrThrow46 = i33;
                    }
                    return arrayList3;
                } finally {
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                SQLiteStatement prepare4 = sQLiteConnection5.prepare("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)");
                try {
                    prepare4.bindText("MailSync", 1);
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare4.step()) {
                        arrayList4.add(prepare4.getText(0));
                    }
                    return arrayList4;
                } finally {
                }
            case 9:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                SQLiteStatement prepare5 = sQLiteConnection6.prepare("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time");
                try {
                    int columnIndexOrThrow67 = ActionBar.getColumnIndexOrThrow(prepare5, "id");
                    int columnIndexOrThrow68 = ActionBar.getColumnIndexOrThrow(prepare5, "state");
                    int columnIndexOrThrow69 = ActionBar.getColumnIndexOrThrow(prepare5, "worker_class_name");
                    int columnIndexOrThrow70 = ActionBar.getColumnIndexOrThrow(prepare5, "input_merger_class_name");
                    int columnIndexOrThrow71 = ActionBar.getColumnIndexOrThrow(prepare5, "input");
                    int columnIndexOrThrow72 = ActionBar.getColumnIndexOrThrow(prepare5, "output");
                    int columnIndexOrThrow73 = ActionBar.getColumnIndexOrThrow(prepare5, "initial_delay");
                    int columnIndexOrThrow74 = ActionBar.getColumnIndexOrThrow(prepare5, "interval_duration");
                    int columnIndexOrThrow75 = ActionBar.getColumnIndexOrThrow(prepare5, "flex_duration");
                    int columnIndexOrThrow76 = ActionBar.getColumnIndexOrThrow(prepare5, "run_attempt_count");
                    int columnIndexOrThrow77 = ActionBar.getColumnIndexOrThrow(prepare5, "backoff_policy");
                    int columnIndexOrThrow78 = ActionBar.getColumnIndexOrThrow(prepare5, "backoff_delay_duration");
                    int columnIndexOrThrow79 = ActionBar.getColumnIndexOrThrow(prepare5, "last_enqueue_time");
                    int columnIndexOrThrow80 = ActionBar.getColumnIndexOrThrow(prepare5, "minimum_retention_duration");
                    int columnIndexOrThrow81 = ActionBar.getColumnIndexOrThrow(prepare5, "schedule_requested_at");
                    int columnIndexOrThrow82 = ActionBar.getColumnIndexOrThrow(prepare5, "run_in_foreground");
                    int columnIndexOrThrow83 = ActionBar.getColumnIndexOrThrow(prepare5, "out_of_quota_policy");
                    int columnIndexOrThrow84 = ActionBar.getColumnIndexOrThrow(prepare5, "period_count");
                    int columnIndexOrThrow85 = ActionBar.getColumnIndexOrThrow(prepare5, "generation");
                    int columnIndexOrThrow86 = ActionBar.getColumnIndexOrThrow(prepare5, "next_schedule_time_override");
                    int columnIndexOrThrow87 = ActionBar.getColumnIndexOrThrow(prepare5, "next_schedule_time_override_generation");
                    int columnIndexOrThrow88 = ActionBar.getColumnIndexOrThrow(prepare5, "stop_reason");
                    int columnIndexOrThrow89 = ActionBar.getColumnIndexOrThrow(prepare5, "trace_tag");
                    int columnIndexOrThrow90 = ActionBar.getColumnIndexOrThrow(prepare5, "backoff_on_system_interruptions");
                    int columnIndexOrThrow91 = ActionBar.getColumnIndexOrThrow(prepare5, "required_network_type");
                    int columnIndexOrThrow92 = ActionBar.getColumnIndexOrThrow(prepare5, "required_network_request");
                    int columnIndexOrThrow93 = ActionBar.getColumnIndexOrThrow(prepare5, "requires_charging");
                    int columnIndexOrThrow94 = ActionBar.getColumnIndexOrThrow(prepare5, "requires_device_idle");
                    int columnIndexOrThrow95 = ActionBar.getColumnIndexOrThrow(prepare5, "requires_battery_not_low");
                    int columnIndexOrThrow96 = ActionBar.getColumnIndexOrThrow(prepare5, "requires_storage_not_low");
                    int columnIndexOrThrow97 = ActionBar.getColumnIndexOrThrow(prepare5, "trigger_content_update_delay");
                    int columnIndexOrThrow98 = ActionBar.getColumnIndexOrThrow(prepare5, "trigger_max_content_delay");
                    int columnIndexOrThrow99 = ActionBar.getColumnIndexOrThrow(prepare5, "content_uri_triggers");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare5.step()) {
                        String text9 = prepare5.getText(columnIndexOrThrow67);
                        int i62 = columnIndexOrThrow80;
                        int i63 = columnIndexOrThrow79;
                        WorkInfo.State intToState3 = SQLite.intToState((int) prepare5.getLong(columnIndexOrThrow68));
                        String text10 = prepare5.getText(columnIndexOrThrow69);
                        String text11 = prepare5.getText(columnIndexOrThrow70);
                        byte[] blob3 = prepare5.getBlob(columnIndexOrThrow71);
                        Data data3 = Data.EMPTY;
                        Data fromByteArray5 = Data.Companion.fromByteArray(blob3);
                        Data fromByteArray6 = Data.Companion.fromByteArray(prepare5.getBlob(columnIndexOrThrow72));
                        long j17 = prepare5.getLong(columnIndexOrThrow73);
                        long j18 = prepare5.getLong(columnIndexOrThrow74);
                        long j19 = prepare5.getLong(columnIndexOrThrow75);
                        int i64 = (int) prepare5.getLong(columnIndexOrThrow76);
                        int i65 = columnIndexOrThrow70;
                        int i66 = columnIndexOrThrow69;
                        BackoffPolicy intToBackoffPolicy3 = SQLite.intToBackoffPolicy((int) prepare5.getLong(columnIndexOrThrow77));
                        long j20 = prepare5.getLong(columnIndexOrThrow78);
                        long j21 = prepare5.getLong(i63);
                        long j22 = prepare5.getLong(i62);
                        int i67 = columnIndexOrThrow81;
                        long j23 = prepare5.getLong(i67);
                        int i68 = columnIndexOrThrow68;
                        int i69 = columnIndexOrThrow82;
                        boolean z10 = ((int) prepare5.getLong(i69)) != 0;
                        int i70 = columnIndexOrThrow67;
                        int i71 = columnIndexOrThrow83;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy3 = SQLite.intToOutOfQuotaPolicy((int) prepare5.getLong(i71));
                        columnIndexOrThrow83 = i71;
                        int i72 = columnIndexOrThrow84;
                        int i73 = (int) prepare5.getLong(i72);
                        columnIndexOrThrow84 = i72;
                        int i74 = columnIndexOrThrow85;
                        int i75 = (int) prepare5.getLong(i74);
                        int i76 = columnIndexOrThrow86;
                        long j24 = prepare5.getLong(i76);
                        int i77 = columnIndexOrThrow87;
                        int i78 = (int) prepare5.getLong(i77);
                        columnIndexOrThrow87 = i77;
                        int i79 = columnIndexOrThrow88;
                        int i80 = (int) prepare5.getLong(i79);
                        int i81 = columnIndexOrThrow89;
                        String text12 = prepare5.isNull(i81) ? null : prepare5.getText(i81);
                        int i82 = columnIndexOrThrow90;
                        if (prepare5.isNull(i82)) {
                            columnIndexOrThrow89 = i81;
                            columnIndexOrThrow88 = i79;
                            valueOf3 = null;
                        } else {
                            columnIndexOrThrow89 = i81;
                            columnIndexOrThrow88 = i79;
                            valueOf3 = Integer.valueOf((int) prepare5.getLong(i82));
                        }
                        if (valueOf3 != null) {
                            bool3 = Boolean.valueOf(valueOf3.intValue() != 0);
                        } else {
                            bool3 = null;
                        }
                        int i83 = columnIndexOrThrow91;
                        NetworkType intToNetworkType3 = SQLite.intToNetworkType((int) prepare5.getLong(i83));
                        int i84 = columnIndexOrThrow92;
                        NetworkRequestCompat networkRequest$work_runtime_release3 = SQLite.toNetworkRequest$work_runtime_release(prepare5.getBlob(i84));
                        int i85 = columnIndexOrThrow93;
                        boolean z11 = ((int) prepare5.getLong(i85)) != 0;
                        int i86 = columnIndexOrThrow94;
                        boolean z12 = ((int) prepare5.getLong(i86)) != 0;
                        int i87 = columnIndexOrThrow95;
                        boolean z13 = ((int) prepare5.getLong(i87)) != 0;
                        columnIndexOrThrow95 = i87;
                        int i88 = columnIndexOrThrow96;
                        int i89 = columnIndexOrThrow97;
                        int i90 = columnIndexOrThrow98;
                        columnIndexOrThrow97 = i89;
                        int i91 = columnIndexOrThrow99;
                        arrayList5.add(new WorkSpec(text9, intToState3, text10, text11, fromByteArray5, fromByteArray6, j17, j18, j19, new Constraints(networkRequest$work_runtime_release3, intToNetworkType3, z11, z12, z13, ((int) prepare5.getLong(i88)) != 0, prepare5.getLong(i89), prepare5.getLong(i90), SQLite.byteArrayToSetOfTriggers(prepare5.getBlob(i91))), i64, intToBackoffPolicy3, j20, j21, j22, j23, z10, intToOutOfQuotaPolicy3, i73, i75, j24, i78, i80, text12, bool3));
                        columnIndexOrThrow67 = i70;
                        columnIndexOrThrow82 = i69;
                        columnIndexOrThrow85 = i74;
                        columnIndexOrThrow86 = i76;
                        columnIndexOrThrow90 = i82;
                        columnIndexOrThrow91 = i83;
                        columnIndexOrThrow92 = i84;
                        columnIndexOrThrow93 = i85;
                        columnIndexOrThrow94 = i86;
                        columnIndexOrThrow99 = i91;
                        columnIndexOrThrow98 = i90;
                        columnIndexOrThrow96 = i88;
                        columnIndexOrThrow80 = i62;
                        columnIndexOrThrow69 = i66;
                        columnIndexOrThrow70 = i65;
                        columnIndexOrThrow68 = i68;
                        columnIndexOrThrow81 = i67;
                        columnIndexOrThrow79 = i63;
                    }
                    return arrayList5;
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                SQLiteStatement prepare6 = sQLiteConnection7.prepare("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)");
                try {
                    int i92 = prepare6.step() ? (int) prepare6.getLong(0) : 0;
                    prepare6.close();
                    return Integer.valueOf(i92);
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                SQLiteStatement prepare7 = sQLiteConnection8.prepare("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
                try {
                    if (prepare7.step()) {
                        if (((int) prepare7.getLong(0)) != 0) {
                            z = true;
                        }
                    }
                    prepare7.close();
                    return Boolean.valueOf(z);
                } finally {
                }
            case BasicTextKt.ShiftMeta /* 12 */:
                return invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(obj);
            case 13:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                SQLiteStatement prepare8 = sQLiteConnection9.prepare("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)");
                try {
                    prepare8.step();
                    int totalChangedRows = OAuthBearer.getTotalChangedRows(sQLiteConnection9);
                    prepare8.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 14:
                return invoke$app$k9mail$K9KoinModuleKt$$ExternalSyntheticLambda1(obj);
            case OffsetKt.Horizontal /* 15 */:
                ((Integer) obj).getClass();
                return unit;
            case 16:
                return invoke$app$k9mail$core$android$common$contact$ContactKoinModuleKt$$ExternalSyntheticLambda1(obj);
            case 17:
                return String.valueOf(obj);
            case 18:
                ((TextLayoutResult) obj).getClass();
                return unit;
            case 19:
                return invoke$app$k9mail$core$ui$compose$designsystem$atom$text$TextBodyMediumKt$$ExternalSyntheticLambda2(obj);
            case 20:
                return invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedEmailAddressKt$$ExternalSyntheticLambda0(obj);
            case 21:
                return invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedFakeSelectKt$$ExternalSyntheticLambda0(obj);
            case 22:
                return invoke$app$k9mail$core$ui$compose$designsystem$atom$textfield$TextFieldOutlinedSelectKt$$ExternalSyntheticLambda3(obj);
            case 23:
                return invoke$app$k9mail$core$ui$compose$designsystem$molecule$ContentLoadingErrorViewKt$$ExternalSyntheticLambda0(obj);
            case 24:
                return invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda0(obj);
            case 25:
                return invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda2(obj);
            case 26:
                return invoke$app$k9mail$core$ui$compose$designsystem$molecule$input$InputLayoutKt$$ExternalSyntheticLambda3(obj);
            case 27:
                return String.valueOf(obj);
            case 28:
                return invoke$app$k9mail$core$ui$compose$designsystem$organism$banner$inline$ErrorBannerInlineNotificationCardKt$$ExternalSyntheticLambda0(obj);
            default:
                Module module = (Module) obj;
                module.getClass();
                Module[] moduleArr = {AccountSettingsModuleKt.featureAccountSettingsModule};
                ArrayList arrayList6 = module.includedModules;
                CollectionsKt.addAll(arrayList6, moduleArr);
                CollectionsKt.addAll(arrayList6, new Module[]{TelemetryModuleKt.telemetryModule});
                CollectionsKt.addAll(arrayList6, new Module[]{FeatureFundingModuleKt.featureFundingModule});
                CollectionsKt.addAll(arrayList6, new Module[]{OnboardingMigrationModuleKt.onboardingMigrationModule});
                CollectionsKt.addAll(arrayList6, new Module[]{FeatureMigrationModuleKt.featureMigrationModule});
                CollectionsKt.addAll(arrayList6, new Module[]{FeatureMessageListModuleKt.featureMessageListModule});
                CollectionsKt.addAll(arrayList6, new Module[]{FeatureThundermailModuleKt.featureThundermailModule});
                ReleaseConfigKt$$ExternalSyntheticLambda0 releaseConfigKt$$ExternalSyntheticLambda0 = new ReleaseConfigKt$$ExternalSyntheticLambda0(19);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GlideBuilder$1.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                Kind kind = Kind.Singleton;
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, releaseConfigKt$$ExternalSyntheticLambda0, kind)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, new ReleaseConfigKt$$ExternalSyntheticLambda0(20), kind), module);
                return unit;
        }
    }
}
