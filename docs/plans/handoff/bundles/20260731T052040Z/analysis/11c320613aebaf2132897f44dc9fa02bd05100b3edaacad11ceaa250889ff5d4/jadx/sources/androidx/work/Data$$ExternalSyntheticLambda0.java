package androidx.work;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.room.DatabaseConfiguration;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.NotImplementedError;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.internal.StringOpsKt;
import okhttp3.Cookie;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.Jsoup;
import org.koin.core.KoinApplication;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Data$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Data$$ExternalSyntheticLambda0(RoomDatabase roomDatabase) {
        this.$r8$classId = 1;
    }

    private final Object invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(Object obj) {
        int i;
        Integer valueOf;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
        try {
            prepare.bindLong(1, 200L);
            int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "state");
            int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
            int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
            int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "input");
            int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "output");
            int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "initial_delay");
            int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "interval_duration");
            int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "flex_duration");
            int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
            int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
            int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
            int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
            int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
            int columnIndexOrThrow17 = DBUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = DBUtil.getColumnIndexOrThrow(prepare, "period_count");
            int columnIndexOrThrow19 = DBUtil.getColumnIndexOrThrow(prepare, "generation");
            int columnIndexOrThrow20 = DBUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = DBUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = DBUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
            int columnIndexOrThrow23 = DBUtil.getColumnIndexOrThrow(prepare, "trace_tag");
            int columnIndexOrThrow24 = DBUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = DBUtil.getColumnIndexOrThrow(prepare, "required_network_type");
            int columnIndexOrThrow26 = DBUtil.getColumnIndexOrThrow(prepare, "required_network_request");
            int columnIndexOrThrow27 = DBUtil.getColumnIndexOrThrow(prepare, "requires_charging");
            int columnIndexOrThrow28 = DBUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
            int columnIndexOrThrow29 = DBUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = DBUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = DBUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = DBUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = DBUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text = prepare.getText(columnIndexOrThrow);
                int i2 = columnIndexOrThrow13;
                int i3 = columnIndexOrThrow14;
                WorkInfo$State intToState = SQLite.intToState((int) prepare.getLong(columnIndexOrThrow2));
                String text2 = prepare.getText(columnIndexOrThrow3);
                String text3 = prepare.getText(columnIndexOrThrow4);
                byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                Data data = Data.EMPTY;
                Data fromByteArray = Cookie.Companion.fromByteArray(blob);
                Data fromByteArray2 = Cookie.Companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
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

    private final Object invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda1(Object obj) {
        return Boolean.valueOf(((Character) obj).charValue() == '-');
    }

    private final Object invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda2(Object obj) {
        char charValue = ((Character) obj).charValue();
        return Boolean.valueOf(charValue == 'T' || charValue == 't');
    }

    private final Object invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda3(Object obj) {
        return Boolean.valueOf(((Character) obj).charValue() == ':');
    }

    private final Object invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda4(Object obj) {
        return Boolean.valueOf(((Character) obj).charValue() == ':');
    }

    private final Object invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda5(Object obj) {
        char charValue = ((Character) obj).charValue();
        return Boolean.valueOf('0' <= charValue && charValue < ':');
    }

    private final Object invoke$kotlinx$serialization$json$JsonElementSerializer$$ExternalSyntheticLambda0(Object obj) {
        ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
        classSerialDescriptorBuilder.getClass();
        final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(22);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonPrimitive", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda0) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
            public final SynchronizedLazyImpl original$delegate;

            {
                this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda0);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ List getAnnotations() {
                return EmptyList.INSTANCE;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final List getElementAnnotations(int i) {
                return getOriginal().getElementAnnotations(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final SerialDescriptor getElementDescriptor(int i) {
                return getOriginal().getElementDescriptor(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementIndex(String str) {
                str.getClass();
                return getOriginal().getElementIndex(str);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getElementName(int i) {
                return getOriginal().getElementName(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final Jsoup getKind() {
                return getOriginal().getKind();
            }

            public final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final boolean isElementOptional(int i) {
                return getOriginal().isElementOptional(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isInline() {
                return false;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isNullable() {
                return false;
            }
        });
        final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda02 = new UtilsKt$$ExternalSyntheticLambda0(23);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonNull", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda02) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
            public final SynchronizedLazyImpl original$delegate;

            {
                this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda02);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ List getAnnotations() {
                return EmptyList.INSTANCE;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final List getElementAnnotations(int i) {
                return getOriginal().getElementAnnotations(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final SerialDescriptor getElementDescriptor(int i) {
                return getOriginal().getElementDescriptor(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementIndex(String str) {
                str.getClass();
                return getOriginal().getElementIndex(str);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getElementName(int i) {
                return getOriginal().getElementName(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final Jsoup getKind() {
                return getOriginal().getKind();
            }

            public final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final boolean isElementOptional(int i) {
                return getOriginal().isElementOptional(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isInline() {
                return false;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isNullable() {
                return false;
            }
        });
        final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda03 = new UtilsKt$$ExternalSyntheticLambda0(24);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonLiteral", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda03) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
            public final SynchronizedLazyImpl original$delegate;

            {
                this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda03);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ List getAnnotations() {
                return EmptyList.INSTANCE;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final List getElementAnnotations(int i) {
                return getOriginal().getElementAnnotations(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final SerialDescriptor getElementDescriptor(int i) {
                return getOriginal().getElementDescriptor(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementIndex(String str) {
                str.getClass();
                return getOriginal().getElementIndex(str);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getElementName(int i) {
                return getOriginal().getElementName(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final Jsoup getKind() {
                return getOriginal().getKind();
            }

            public final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final boolean isElementOptional(int i) {
                return getOriginal().isElementOptional(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isInline() {
                return false;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isNullable() {
                return false;
            }
        });
        final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda04 = new UtilsKt$$ExternalSyntheticLambda0(25);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonObject", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda04) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
            public final SynchronizedLazyImpl original$delegate;

            {
                this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda04);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ List getAnnotations() {
                return EmptyList.INSTANCE;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final List getElementAnnotations(int i) {
                return getOriginal().getElementAnnotations(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final SerialDescriptor getElementDescriptor(int i) {
                return getOriginal().getElementDescriptor(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementIndex(String str) {
                str.getClass();
                return getOriginal().getElementIndex(str);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getElementName(int i) {
                return getOriginal().getElementName(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final Jsoup getKind() {
                return getOriginal().getKind();
            }

            public final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final boolean isElementOptional(int i) {
                return getOriginal().isElementOptional(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isInline() {
                return false;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isNullable() {
                return false;
            }
        });
        final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda05 = new UtilsKt$$ExternalSyntheticLambda0(26);
        ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "JsonArray", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda05) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
            public final SynchronizedLazyImpl original$delegate;

            {
                this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda05);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ List getAnnotations() {
                return EmptyList.INSTANCE;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final List getElementAnnotations(int i) {
                return getOriginal().getElementAnnotations(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final SerialDescriptor getElementDescriptor(int i) {
                return getOriginal().getElementDescriptor(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementIndex(String str) {
                str.getClass();
                return getOriginal().getElementIndex(str);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getElementName(int i) {
                return getOriginal().getElementName(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final int getElementsCount() {
                return getOriginal().getElementsCount();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final Jsoup getKind() {
                return getOriginal().getKind();
            }

            public final SerialDescriptor getOriginal() {
                return (SerialDescriptor) this.original$delegate.getValue();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final String getSerialName() {
                return getOriginal().getSerialName();
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final boolean isElementOptional(int i) {
                return getOriginal().isElementOptional(i);
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isInline() {
                return false;
            }

            @Override // kotlinx.serialization.descriptors.SerialDescriptor
            public final /* bridge */ boolean isNullable() {
                return false;
            }
        });
        return Unit.INSTANCE;
    }

    private final Object invoke$kotlinx$serialization$json$JsonObject$$ExternalSyntheticLambda0(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        String str = (String) entry.getKey();
        JsonElement jsonElement = (JsonElement) entry.getValue();
        StringBuilder sb = new StringBuilder();
        StringOpsKt.printQuoted(sb, str);
        sb.append(':');
        sb.append(jsonElement);
        return sb.toString();
    }

    private final Object invoke$net$newpipe$app$AppKt$$ExternalSyntheticLambda0(Object obj) {
        KoinApplication koinApplication = (KoinApplication) obj;
        koinApplication.getClass();
        ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3 = new ZipFilesKt$$ExternalSyntheticLambda3(1);
        Module module = new Module();
        zipFilesKt$$ExternalSyntheticLambda3.invoke(module);
        koinApplication.modules(Jsoup.listOf(module));
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
        r5 = false;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(str, " : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    value.getClass();
                }
                m.append(value);
                return m.toString();
            case 1:
                ((DatabaseConfiguration) obj).getClass();
                throw new NotImplementedError(0);
            case 2:
                SQLiteStatement sQLiteStatement = (SQLiteStatement) obj;
                sQLiteStatement.getClass();
                return Boolean.valueOf(sQLiteStatement.step());
            case 3:
                SQLiteStatement sQLiteStatement2 = (SQLiteStatement) obj;
                sQLiteStatement2.getClass();
                SetBuilder setBuilder = new SetBuilder();
                while (sQLiteStatement2.step()) {
                    setBuilder.add(Integer.valueOf((int) sQLiteStatement2.getLong(0)));
                }
                return setBuilder.build();
            case 4:
                List list = (List) obj;
                list.getClass();
                return new SparseArraySerializer((KSerializer) CollectionsKt.first(list), 1);
            case 5:
                List list2 = (List) obj;
                list2.getClass();
                return new SparseArraySerializer((KSerializer) CollectionsKt.first(list2), 0);
            case 6:
                WindowMetricsCalculator windowMetricsCalculator = (WindowMetricsCalculator) obj;
                windowMetricsCalculator.getClass();
                return windowMetricsCalculator;
            case 7:
                ConstraintController constraintController = (ConstraintController) obj;
                constraintController.getClass();
                return constraintController.getClass().getSimpleName();
            case 8:
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
            case 9:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                SQLiteStatement prepare2 = sQLiteConnection2.prepare("DELETE FROM WorkProgress");
                try {
                    prepare2.step();
                    prepare2.close();
                    return Unit.INSTANCE;
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                SQLiteStatement prepare3 = sQLiteConnection3.prepare("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
                try {
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare3, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare3, "state");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare3, "worker_class_name");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare3, "input_merger_class_name");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare3, "input");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare3, "output");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare3, "initial_delay");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare3, "interval_duration");
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare3, "flex_duration");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare3, "run_attempt_count");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare3, "backoff_policy");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare3, "backoff_delay_duration");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare3, "last_enqueue_time");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare3, "minimum_retention_duration");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare3, "schedule_requested_at");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare3, "run_in_foreground");
                    int columnIndexOrThrow17 = DBUtil.getColumnIndexOrThrow(prepare3, "out_of_quota_policy");
                    int columnIndexOrThrow18 = DBUtil.getColumnIndexOrThrow(prepare3, "period_count");
                    int columnIndexOrThrow19 = DBUtil.getColumnIndexOrThrow(prepare3, "generation");
                    int columnIndexOrThrow20 = DBUtil.getColumnIndexOrThrow(prepare3, "next_schedule_time_override");
                    int columnIndexOrThrow21 = DBUtil.getColumnIndexOrThrow(prepare3, "next_schedule_time_override_generation");
                    int columnIndexOrThrow22 = DBUtil.getColumnIndexOrThrow(prepare3, DownloadService.KEY_STOP_REASON);
                    int columnIndexOrThrow23 = DBUtil.getColumnIndexOrThrow(prepare3, "trace_tag");
                    int columnIndexOrThrow24 = DBUtil.getColumnIndexOrThrow(prepare3, "backoff_on_system_interruptions");
                    int columnIndexOrThrow25 = DBUtil.getColumnIndexOrThrow(prepare3, "required_network_type");
                    int columnIndexOrThrow26 = DBUtil.getColumnIndexOrThrow(prepare3, "required_network_request");
                    int columnIndexOrThrow27 = DBUtil.getColumnIndexOrThrow(prepare3, "requires_charging");
                    int columnIndexOrThrow28 = DBUtil.getColumnIndexOrThrow(prepare3, "requires_device_idle");
                    int columnIndexOrThrow29 = DBUtil.getColumnIndexOrThrow(prepare3, "requires_battery_not_low");
                    int columnIndexOrThrow30 = DBUtil.getColumnIndexOrThrow(prepare3, "requires_storage_not_low");
                    int columnIndexOrThrow31 = DBUtil.getColumnIndexOrThrow(prepare3, "trigger_content_update_delay");
                    int columnIndexOrThrow32 = DBUtil.getColumnIndexOrThrow(prepare3, "trigger_max_content_delay");
                    int columnIndexOrThrow33 = DBUtil.getColumnIndexOrThrow(prepare3, "content_uri_triggers");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare3.step()) {
                        String text = prepare3.getText(columnIndexOrThrow);
                        int i = columnIndexOrThrow14;
                        int i2 = columnIndexOrThrow13;
                        WorkInfo$State intToState = SQLite.intToState((int) prepare3.getLong(columnIndexOrThrow2));
                        String text2 = prepare3.getText(columnIndexOrThrow3);
                        String text3 = prepare3.getText(columnIndexOrThrow4);
                        byte[] blob = prepare3.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = Cookie.Companion.fromByteArray(blob);
                        Data fromByteArray2 = Cookie.Companion.fromByteArray(prepare3.getBlob(columnIndexOrThrow6));
                        long j = prepare3.getLong(columnIndexOrThrow7);
                        long j2 = prepare3.getLong(columnIndexOrThrow8);
                        long j3 = prepare3.getLong(columnIndexOrThrow9);
                        int i3 = (int) prepare3.getLong(columnIndexOrThrow10);
                        int i4 = columnIndexOrThrow5;
                        int i5 = columnIndexOrThrow4;
                        BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare3.getLong(columnIndexOrThrow11));
                        long j4 = prepare3.getLong(columnIndexOrThrow12);
                        long j5 = prepare3.getLong(i2);
                        long j6 = prepare3.getLong(i);
                        int i6 = columnIndexOrThrow15;
                        long j7 = prepare3.getLong(i6);
                        columnIndexOrThrow15 = i6;
                        int i7 = columnIndexOrThrow16;
                        int i8 = columnIndexOrThrow3;
                        boolean z2 = ((int) prepare3.getLong(i7)) != 0;
                        int i9 = columnIndexOrThrow17;
                        int i10 = columnIndexOrThrow2;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare3.getLong(i9));
                        int i11 = columnIndexOrThrow18;
                        int i12 = (int) prepare3.getLong(i11);
                        int i13 = columnIndexOrThrow19;
                        int i14 = (int) prepare3.getLong(i13);
                        int i15 = columnIndexOrThrow20;
                        long j8 = prepare3.getLong(i15);
                        int i16 = columnIndexOrThrow21;
                        int i17 = (int) prepare3.getLong(i16);
                        columnIndexOrThrow21 = i16;
                        int i18 = columnIndexOrThrow22;
                        int i19 = (int) prepare3.getLong(i18);
                        int i20 = columnIndexOrThrow23;
                        String text4 = prepare3.isNull(i20) ? null : prepare3.getText(i20);
                        int i21 = columnIndexOrThrow24;
                        if (prepare3.isNull(i21)) {
                            columnIndexOrThrow23 = i20;
                            columnIndexOrThrow22 = i18;
                            valueOf = null;
                        } else {
                            columnIndexOrThrow23 = i20;
                            columnIndexOrThrow22 = i18;
                            valueOf = Integer.valueOf((int) prepare3.getLong(i21));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        int i22 = columnIndexOrThrow25;
                        NetworkType intToNetworkType = SQLite.intToNetworkType((int) prepare3.getLong(i22));
                        int i23 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = SQLite.toNetworkRequest$work_runtime_release(prepare3.getBlob(i23));
                        int i24 = columnIndexOrThrow27;
                        boolean z3 = ((int) prepare3.getLong(i24)) != 0;
                        int i25 = columnIndexOrThrow28;
                        boolean z4 = ((int) prepare3.getLong(i25)) != 0;
                        int i26 = columnIndexOrThrow29;
                        boolean z5 = ((int) prepare3.getLong(i26)) != 0;
                        columnIndexOrThrow29 = i26;
                        int i27 = columnIndexOrThrow30;
                        int i28 = columnIndexOrThrow31;
                        int i29 = columnIndexOrThrow32;
                        columnIndexOrThrow31 = i28;
                        int i30 = columnIndexOrThrow33;
                        arrayList2.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z3, z4, z5, ((int) prepare3.getLong(i27)) != 0, prepare3.getLong(i28), prepare3.getLong(i29), SQLite.byteArrayToSetOfTriggers(prepare3.getBlob(i30))), i3, intToBackoffPolicy, j4, j5, j6, j7, z2, intToOutOfQuotaPolicy, i12, i14, j8, i17, i19, text4, bool));
                        columnIndexOrThrow28 = i25;
                        columnIndexOrThrow2 = i10;
                        columnIndexOrThrow17 = i9;
                        columnIndexOrThrow18 = i11;
                        columnIndexOrThrow19 = i13;
                        columnIndexOrThrow20 = i15;
                        columnIndexOrThrow24 = i21;
                        columnIndexOrThrow25 = i22;
                        columnIndexOrThrow26 = i23;
                        columnIndexOrThrow27 = i24;
                        columnIndexOrThrow33 = i30;
                        columnIndexOrThrow32 = i29;
                        columnIndexOrThrow30 = i27;
                        columnIndexOrThrow4 = i5;
                        columnIndexOrThrow13 = i2;
                        columnIndexOrThrow14 = i;
                        columnIndexOrThrow5 = i4;
                        columnIndexOrThrow3 = i8;
                        columnIndexOrThrow16 = i7;
                    }
                    return arrayList2;
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                SQLiteStatement prepare4 = sQLiteConnection4.prepare("SELECT * FROM workspec WHERE state=1");
                try {
                    int columnIndexOrThrow34 = DBUtil.getColumnIndexOrThrow(prepare4, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow35 = DBUtil.getColumnIndexOrThrow(prepare4, "state");
                    int columnIndexOrThrow36 = DBUtil.getColumnIndexOrThrow(prepare4, "worker_class_name");
                    int columnIndexOrThrow37 = DBUtil.getColumnIndexOrThrow(prepare4, "input_merger_class_name");
                    int columnIndexOrThrow38 = DBUtil.getColumnIndexOrThrow(prepare4, "input");
                    int columnIndexOrThrow39 = DBUtil.getColumnIndexOrThrow(prepare4, "output");
                    int columnIndexOrThrow40 = DBUtil.getColumnIndexOrThrow(prepare4, "initial_delay");
                    int columnIndexOrThrow41 = DBUtil.getColumnIndexOrThrow(prepare4, "interval_duration");
                    int columnIndexOrThrow42 = DBUtil.getColumnIndexOrThrow(prepare4, "flex_duration");
                    int columnIndexOrThrow43 = DBUtil.getColumnIndexOrThrow(prepare4, "run_attempt_count");
                    int columnIndexOrThrow44 = DBUtil.getColumnIndexOrThrow(prepare4, "backoff_policy");
                    int columnIndexOrThrow45 = DBUtil.getColumnIndexOrThrow(prepare4, "backoff_delay_duration");
                    int columnIndexOrThrow46 = DBUtil.getColumnIndexOrThrow(prepare4, "last_enqueue_time");
                    int columnIndexOrThrow47 = DBUtil.getColumnIndexOrThrow(prepare4, "minimum_retention_duration");
                    int columnIndexOrThrow48 = DBUtil.getColumnIndexOrThrow(prepare4, "schedule_requested_at");
                    int columnIndexOrThrow49 = DBUtil.getColumnIndexOrThrow(prepare4, "run_in_foreground");
                    int columnIndexOrThrow50 = DBUtil.getColumnIndexOrThrow(prepare4, "out_of_quota_policy");
                    int columnIndexOrThrow51 = DBUtil.getColumnIndexOrThrow(prepare4, "period_count");
                    int columnIndexOrThrow52 = DBUtil.getColumnIndexOrThrow(prepare4, "generation");
                    int columnIndexOrThrow53 = DBUtil.getColumnIndexOrThrow(prepare4, "next_schedule_time_override");
                    int columnIndexOrThrow54 = DBUtil.getColumnIndexOrThrow(prepare4, "next_schedule_time_override_generation");
                    int columnIndexOrThrow55 = DBUtil.getColumnIndexOrThrow(prepare4, DownloadService.KEY_STOP_REASON);
                    int columnIndexOrThrow56 = DBUtil.getColumnIndexOrThrow(prepare4, "trace_tag");
                    int columnIndexOrThrow57 = DBUtil.getColumnIndexOrThrow(prepare4, "backoff_on_system_interruptions");
                    int columnIndexOrThrow58 = DBUtil.getColumnIndexOrThrow(prepare4, "required_network_type");
                    int columnIndexOrThrow59 = DBUtil.getColumnIndexOrThrow(prepare4, "required_network_request");
                    int columnIndexOrThrow60 = DBUtil.getColumnIndexOrThrow(prepare4, "requires_charging");
                    int columnIndexOrThrow61 = DBUtil.getColumnIndexOrThrow(prepare4, "requires_device_idle");
                    int columnIndexOrThrow62 = DBUtil.getColumnIndexOrThrow(prepare4, "requires_battery_not_low");
                    int columnIndexOrThrow63 = DBUtil.getColumnIndexOrThrow(prepare4, "requires_storage_not_low");
                    int columnIndexOrThrow64 = DBUtil.getColumnIndexOrThrow(prepare4, "trigger_content_update_delay");
                    int columnIndexOrThrow65 = DBUtil.getColumnIndexOrThrow(prepare4, "trigger_max_content_delay");
                    int columnIndexOrThrow66 = DBUtil.getColumnIndexOrThrow(prepare4, "content_uri_triggers");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare4.step()) {
                        String text5 = prepare4.getText(columnIndexOrThrow34);
                        int i31 = columnIndexOrThrow47;
                        int i32 = columnIndexOrThrow46;
                        WorkInfo$State intToState2 = SQLite.intToState((int) prepare4.getLong(columnIndexOrThrow35));
                        String text6 = prepare4.getText(columnIndexOrThrow36);
                        String text7 = prepare4.getText(columnIndexOrThrow37);
                        byte[] blob2 = prepare4.getBlob(columnIndexOrThrow38);
                        Data data2 = Data.EMPTY;
                        Data fromByteArray3 = Cookie.Companion.fromByteArray(blob2);
                        Data fromByteArray4 = Cookie.Companion.fromByteArray(prepare4.getBlob(columnIndexOrThrow39));
                        long j9 = prepare4.getLong(columnIndexOrThrow40);
                        long j10 = prepare4.getLong(columnIndexOrThrow41);
                        long j11 = prepare4.getLong(columnIndexOrThrow42);
                        int i33 = (int) prepare4.getLong(columnIndexOrThrow43);
                        int i34 = columnIndexOrThrow38;
                        int i35 = columnIndexOrThrow37;
                        BackoffPolicy intToBackoffPolicy2 = SQLite.intToBackoffPolicy((int) prepare4.getLong(columnIndexOrThrow44));
                        long j12 = prepare4.getLong(columnIndexOrThrow45);
                        long j13 = prepare4.getLong(i32);
                        long j14 = prepare4.getLong(i31);
                        int i36 = columnIndexOrThrow48;
                        long j15 = prepare4.getLong(i36);
                        int i37 = columnIndexOrThrow36;
                        int i38 = columnIndexOrThrow49;
                        boolean z6 = ((int) prepare4.getLong(i38)) != 0;
                        int i39 = columnIndexOrThrow35;
                        int i40 = columnIndexOrThrow50;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy2 = SQLite.intToOutOfQuotaPolicy((int) prepare4.getLong(i40));
                        columnIndexOrThrow50 = i40;
                        int i41 = columnIndexOrThrow51;
                        int i42 = (int) prepare4.getLong(i41);
                        columnIndexOrThrow51 = i41;
                        int i43 = columnIndexOrThrow52;
                        int i44 = (int) prepare4.getLong(i43);
                        int i45 = columnIndexOrThrow53;
                        long j16 = prepare4.getLong(i45);
                        int i46 = columnIndexOrThrow54;
                        int i47 = (int) prepare4.getLong(i46);
                        columnIndexOrThrow54 = i46;
                        int i48 = columnIndexOrThrow55;
                        int i49 = (int) prepare4.getLong(i48);
                        int i50 = columnIndexOrThrow56;
                        String text8 = prepare4.isNull(i50) ? null : prepare4.getText(i50);
                        int i51 = columnIndexOrThrow57;
                        if (prepare4.isNull(i51)) {
                            columnIndexOrThrow56 = i50;
                            columnIndexOrThrow55 = i48;
                            valueOf2 = null;
                        } else {
                            columnIndexOrThrow56 = i50;
                            columnIndexOrThrow55 = i48;
                            valueOf2 = Integer.valueOf((int) prepare4.getLong(i51));
                        }
                        if (valueOf2 != null) {
                            bool2 = Boolean.valueOf(valueOf2.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        int i52 = columnIndexOrThrow58;
                        NetworkType intToNetworkType2 = SQLite.intToNetworkType((int) prepare4.getLong(i52));
                        int i53 = columnIndexOrThrow59;
                        NetworkRequestCompat networkRequest$work_runtime_release2 = SQLite.toNetworkRequest$work_runtime_release(prepare4.getBlob(i53));
                        int i54 = columnIndexOrThrow60;
                        boolean z7 = ((int) prepare4.getLong(i54)) != 0;
                        int i55 = columnIndexOrThrow61;
                        boolean z8 = ((int) prepare4.getLong(i55)) != 0;
                        int i56 = columnIndexOrThrow62;
                        boolean z9 = ((int) prepare4.getLong(i56)) != 0;
                        columnIndexOrThrow62 = i56;
                        int i57 = columnIndexOrThrow63;
                        int i58 = columnIndexOrThrow64;
                        int i59 = columnIndexOrThrow65;
                        columnIndexOrThrow64 = i58;
                        int i60 = columnIndexOrThrow66;
                        arrayList3.add(new WorkSpec(text5, intToState2, text6, text7, fromByteArray3, fromByteArray4, j9, j10, j11, new Constraints(networkRequest$work_runtime_release2, intToNetworkType2, z7, z8, z9, ((int) prepare4.getLong(i57)) != 0, prepare4.getLong(i58), prepare4.getLong(i59), SQLite.byteArrayToSetOfTriggers(prepare4.getBlob(i60))), i33, intToBackoffPolicy2, j12, j13, j14, j15, z6, intToOutOfQuotaPolicy2, i42, i44, j16, i47, i49, text8, bool2));
                        columnIndexOrThrow35 = i39;
                        columnIndexOrThrow49 = i38;
                        columnIndexOrThrow52 = i43;
                        columnIndexOrThrow53 = i45;
                        columnIndexOrThrow57 = i51;
                        columnIndexOrThrow58 = i52;
                        columnIndexOrThrow59 = i53;
                        columnIndexOrThrow60 = i54;
                        columnIndexOrThrow61 = i55;
                        columnIndexOrThrow66 = i60;
                        columnIndexOrThrow65 = i59;
                        columnIndexOrThrow63 = i57;
                        columnIndexOrThrow47 = i31;
                        columnIndexOrThrow37 = i35;
                        columnIndexOrThrow38 = i34;
                        columnIndexOrThrow36 = i37;
                        columnIndexOrThrow48 = i36;
                        columnIndexOrThrow46 = i32;
                    }
                    return arrayList3;
                } finally {
                }
            case 12:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                SQLiteStatement prepare5 = sQLiteConnection5.prepare("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)");
                try {
                    prepare5.bindText(1, "org.schabi.newpipe_streams_notifications");
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare5.step()) {
                        arrayList4.add(prepare5.getText(0));
                    }
                    return arrayList4;
                } finally {
                }
            case 13:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                SQLiteStatement prepare6 = sQLiteConnection6.prepare("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time");
                try {
                    int columnIndexOrThrow67 = DBUtil.getColumnIndexOrThrow(prepare6, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow68 = DBUtil.getColumnIndexOrThrow(prepare6, "state");
                    int columnIndexOrThrow69 = DBUtil.getColumnIndexOrThrow(prepare6, "worker_class_name");
                    int columnIndexOrThrow70 = DBUtil.getColumnIndexOrThrow(prepare6, "input_merger_class_name");
                    int columnIndexOrThrow71 = DBUtil.getColumnIndexOrThrow(prepare6, "input");
                    int columnIndexOrThrow72 = DBUtil.getColumnIndexOrThrow(prepare6, "output");
                    int columnIndexOrThrow73 = DBUtil.getColumnIndexOrThrow(prepare6, "initial_delay");
                    int columnIndexOrThrow74 = DBUtil.getColumnIndexOrThrow(prepare6, "interval_duration");
                    int columnIndexOrThrow75 = DBUtil.getColumnIndexOrThrow(prepare6, "flex_duration");
                    int columnIndexOrThrow76 = DBUtil.getColumnIndexOrThrow(prepare6, "run_attempt_count");
                    int columnIndexOrThrow77 = DBUtil.getColumnIndexOrThrow(prepare6, "backoff_policy");
                    int columnIndexOrThrow78 = DBUtil.getColumnIndexOrThrow(prepare6, "backoff_delay_duration");
                    int columnIndexOrThrow79 = DBUtil.getColumnIndexOrThrow(prepare6, "last_enqueue_time");
                    int columnIndexOrThrow80 = DBUtil.getColumnIndexOrThrow(prepare6, "minimum_retention_duration");
                    int columnIndexOrThrow81 = DBUtil.getColumnIndexOrThrow(prepare6, "schedule_requested_at");
                    int columnIndexOrThrow82 = DBUtil.getColumnIndexOrThrow(prepare6, "run_in_foreground");
                    int columnIndexOrThrow83 = DBUtil.getColumnIndexOrThrow(prepare6, "out_of_quota_policy");
                    int columnIndexOrThrow84 = DBUtil.getColumnIndexOrThrow(prepare6, "period_count");
                    int columnIndexOrThrow85 = DBUtil.getColumnIndexOrThrow(prepare6, "generation");
                    int columnIndexOrThrow86 = DBUtil.getColumnIndexOrThrow(prepare6, "next_schedule_time_override");
                    int columnIndexOrThrow87 = DBUtil.getColumnIndexOrThrow(prepare6, "next_schedule_time_override_generation");
                    int columnIndexOrThrow88 = DBUtil.getColumnIndexOrThrow(prepare6, DownloadService.KEY_STOP_REASON);
                    int columnIndexOrThrow89 = DBUtil.getColumnIndexOrThrow(prepare6, "trace_tag");
                    int columnIndexOrThrow90 = DBUtil.getColumnIndexOrThrow(prepare6, "backoff_on_system_interruptions");
                    int columnIndexOrThrow91 = DBUtil.getColumnIndexOrThrow(prepare6, "required_network_type");
                    int columnIndexOrThrow92 = DBUtil.getColumnIndexOrThrow(prepare6, "required_network_request");
                    int columnIndexOrThrow93 = DBUtil.getColumnIndexOrThrow(prepare6, "requires_charging");
                    int columnIndexOrThrow94 = DBUtil.getColumnIndexOrThrow(prepare6, "requires_device_idle");
                    int columnIndexOrThrow95 = DBUtil.getColumnIndexOrThrow(prepare6, "requires_battery_not_low");
                    int columnIndexOrThrow96 = DBUtil.getColumnIndexOrThrow(prepare6, "requires_storage_not_low");
                    int columnIndexOrThrow97 = DBUtil.getColumnIndexOrThrow(prepare6, "trigger_content_update_delay");
                    int columnIndexOrThrow98 = DBUtil.getColumnIndexOrThrow(prepare6, "trigger_max_content_delay");
                    int columnIndexOrThrow99 = DBUtil.getColumnIndexOrThrow(prepare6, "content_uri_triggers");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare6.step()) {
                        String text9 = prepare6.getText(columnIndexOrThrow67);
                        int i61 = columnIndexOrThrow80;
                        int i62 = columnIndexOrThrow79;
                        WorkInfo$State intToState3 = SQLite.intToState((int) prepare6.getLong(columnIndexOrThrow68));
                        String text10 = prepare6.getText(columnIndexOrThrow69);
                        String text11 = prepare6.getText(columnIndexOrThrow70);
                        byte[] blob3 = prepare6.getBlob(columnIndexOrThrow71);
                        Data data3 = Data.EMPTY;
                        Data fromByteArray5 = Cookie.Companion.fromByteArray(blob3);
                        Data fromByteArray6 = Cookie.Companion.fromByteArray(prepare6.getBlob(columnIndexOrThrow72));
                        long j17 = prepare6.getLong(columnIndexOrThrow73);
                        long j18 = prepare6.getLong(columnIndexOrThrow74);
                        long j19 = prepare6.getLong(columnIndexOrThrow75);
                        int i63 = (int) prepare6.getLong(columnIndexOrThrow76);
                        int i64 = columnIndexOrThrow71;
                        int i65 = columnIndexOrThrow70;
                        BackoffPolicy intToBackoffPolicy3 = SQLite.intToBackoffPolicy((int) prepare6.getLong(columnIndexOrThrow77));
                        long j20 = prepare6.getLong(columnIndexOrThrow78);
                        long j21 = prepare6.getLong(i62);
                        long j22 = prepare6.getLong(i61);
                        int i66 = columnIndexOrThrow81;
                        long j23 = prepare6.getLong(i66);
                        int i67 = columnIndexOrThrow69;
                        int i68 = columnIndexOrThrow82;
                        boolean z10 = ((int) prepare6.getLong(i68)) != 0;
                        int i69 = columnIndexOrThrow68;
                        int i70 = columnIndexOrThrow83;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy3 = SQLite.intToOutOfQuotaPolicy((int) prepare6.getLong(i70));
                        columnIndexOrThrow83 = i70;
                        int i71 = columnIndexOrThrow84;
                        int i72 = (int) prepare6.getLong(i71);
                        columnIndexOrThrow84 = i71;
                        int i73 = columnIndexOrThrow85;
                        int i74 = (int) prepare6.getLong(i73);
                        int i75 = columnIndexOrThrow86;
                        long j24 = prepare6.getLong(i75);
                        int i76 = columnIndexOrThrow87;
                        int i77 = (int) prepare6.getLong(i76);
                        columnIndexOrThrow87 = i76;
                        int i78 = columnIndexOrThrow88;
                        int i79 = (int) prepare6.getLong(i78);
                        int i80 = columnIndexOrThrow89;
                        String text12 = prepare6.isNull(i80) ? null : prepare6.getText(i80);
                        int i81 = columnIndexOrThrow90;
                        if (prepare6.isNull(i81)) {
                            columnIndexOrThrow89 = i80;
                            columnIndexOrThrow88 = i78;
                            valueOf3 = null;
                        } else {
                            columnIndexOrThrow89 = i80;
                            columnIndexOrThrow88 = i78;
                            valueOf3 = Integer.valueOf((int) prepare6.getLong(i81));
                        }
                        if (valueOf3 != null) {
                            bool3 = Boolean.valueOf(valueOf3.intValue() != 0);
                        } else {
                            bool3 = null;
                        }
                        int i82 = columnIndexOrThrow91;
                        NetworkType intToNetworkType3 = SQLite.intToNetworkType((int) prepare6.getLong(i82));
                        int i83 = columnIndexOrThrow92;
                        NetworkRequestCompat networkRequest$work_runtime_release3 = SQLite.toNetworkRequest$work_runtime_release(prepare6.getBlob(i83));
                        int i84 = columnIndexOrThrow93;
                        boolean z11 = ((int) prepare6.getLong(i84)) != 0;
                        int i85 = columnIndexOrThrow94;
                        boolean z12 = ((int) prepare6.getLong(i85)) != 0;
                        int i86 = columnIndexOrThrow95;
                        boolean z13 = ((int) prepare6.getLong(i86)) != 0;
                        columnIndexOrThrow95 = i86;
                        int i87 = columnIndexOrThrow96;
                        int i88 = columnIndexOrThrow97;
                        int i89 = columnIndexOrThrow98;
                        columnIndexOrThrow97 = i88;
                        int i90 = columnIndexOrThrow99;
                        arrayList5.add(new WorkSpec(text9, intToState3, text10, text11, fromByteArray5, fromByteArray6, j17, j18, j19, new Constraints(networkRequest$work_runtime_release3, intToNetworkType3, z11, z12, z13, ((int) prepare6.getLong(i87)) != 0, prepare6.getLong(i88), prepare6.getLong(i89), SQLite.byteArrayToSetOfTriggers(prepare6.getBlob(i90))), i63, intToBackoffPolicy3, j20, j21, j22, j23, z10, intToOutOfQuotaPolicy3, i72, i74, j24, i77, i79, text12, bool3));
                        columnIndexOrThrow68 = i69;
                        columnIndexOrThrow82 = i68;
                        columnIndexOrThrow85 = i73;
                        columnIndexOrThrow86 = i75;
                        columnIndexOrThrow90 = i81;
                        columnIndexOrThrow91 = i82;
                        columnIndexOrThrow92 = i83;
                        columnIndexOrThrow93 = i84;
                        columnIndexOrThrow94 = i85;
                        columnIndexOrThrow99 = i90;
                        columnIndexOrThrow98 = i89;
                        columnIndexOrThrow96 = i87;
                        columnIndexOrThrow80 = i61;
                        columnIndexOrThrow70 = i65;
                        columnIndexOrThrow71 = i64;
                        columnIndexOrThrow69 = i67;
                        columnIndexOrThrow81 = i66;
                        columnIndexOrThrow79 = i62;
                    }
                    return arrayList5;
                } finally {
                }
            case 14:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                SQLiteStatement prepare7 = sQLiteConnection7.prepare("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)");
                try {
                    int i91 = prepare7.step() ? (int) prepare7.getLong(0) : 0;
                    prepare7.close();
                    return Integer.valueOf(i91);
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                SQLiteStatement prepare8 = sQLiteConnection8.prepare("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
                try {
                    if (prepare8.step()) {
                        if (((int) prepare8.getLong(0)) != 0) {
                            z = true;
                        }
                    }
                    prepare8.close();
                    return Boolean.valueOf(z);
                } finally {
                }
            case 16:
                return invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda7(obj);
            case 17:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                SQLiteStatement prepare9 = sQLiteConnection9.prepare("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)");
                try {
                    prepare9.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection9);
                    prepare9.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 18:
                return Boolean.valueOf(obj == null);
            case 19:
                return Boolean.valueOf(((Character) obj).charValue() == '-');
            case 20:
                return invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda1(obj);
            case 21:
                return invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda2(obj);
            case 22:
                return invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda3(obj);
            case 23:
                return invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda4(obj);
            case 24:
                return invoke$kotlin$time$InstantKt$$ExternalSyntheticLambda5(obj);
            case 25:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (element instanceof CoroutineDispatcher) {
                    return (CoroutineDispatcher) element;
                }
                return null;
            case 26:
                return invoke$kotlinx$serialization$json$JsonElementSerializer$$ExternalSyntheticLambda0(obj);
            case 27:
                return invoke$kotlinx$serialization$json$JsonObject$$ExternalSyntheticLambda0(obj);
            case 28:
                return invoke$net$newpipe$app$AppKt$$ExternalSyntheticLambda0(obj);
            default:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                jsonBuilder.getClass();
                jsonBuilder.prettyPrint = true;
                jsonBuilder.ignoreUnknownKeys = true;
                jsonBuilder.coerceInputValues = true;
                jsonBuilder.explicitNulls = true;
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ Data$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }
}
