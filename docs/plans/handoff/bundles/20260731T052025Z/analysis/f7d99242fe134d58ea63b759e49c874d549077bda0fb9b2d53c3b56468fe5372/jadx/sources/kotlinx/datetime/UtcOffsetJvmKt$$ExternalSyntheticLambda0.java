package kotlinx.datetime;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.ImageLoader;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.skydoves.landscapist.LocalImageSourceFileKt;
import com.skydoves.landscapist.coil3.LocalCoilProviderKt;
import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.SignStyle;
import j$.time.temporal.ChronoField;
import java.util.ArrayList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.datetime.format.AbstractDateTimeFormat;
import kotlinx.datetime.format.HourDirective;
import kotlinx.datetime.format.LocalDateFormat;
import kotlinx.datetime.format.LocalDateFormatKt;
import kotlinx.datetime.format.LocalDateTimeFormat;
import kotlinx.datetime.format.LocalTimeFormat;
import kotlinx.datetime.format.LocalTimeFormatKt;
import kotlinx.datetime.format.MinuteDirective;
import kotlinx.datetime.format.Padding;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.datetime.format.UtcOffsetMinuteOfHourDirective;
import kotlinx.datetime.format.UtcOffsetWholeHoursDirective;
import kotlinx.datetime.format.YearMonthFormat;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.SignedFormatStructure;
import kotlinx.datetime.serializers.DayBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.MonthBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.TimeBasedDateTimeUnitSerializer;
import kotlinx.io.Sink$CC;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.json.JsonArraySerializer;
import kotlinx.serialization.json.JsonLiteralSerializer;
import kotlinx.serialization.json.JsonNullSerializer;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import kotlinx.serialization.json.JsonObjectSerializer;
import kotlinx.serialization.json.JsonPrimitiveSerializer;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UtcOffsetJvmKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ UtcOffsetJvmKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ImageLoader LocalCoilImageLoader$lambda$0;
        int i = 4;
        int i2 = 3;
        int i3 = 2;
        int i4 = 1;
        int i5 = 0;
        switch (this.$r8$classId) {
            case 0:
                return new DateTimeFormatterBuilder().parseCaseInsensitive().appendOffsetId().toFormatter();
            case 1:
                return new Handler(Looper.getMainLooper());
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalImageSourceFileKt.LocalImageSourceFile;
                return null;
            case 3:
                LocalCoilImageLoader$lambda$0 = LocalCoilProviderKt.LocalCoilImageLoader$lambda$0();
                return LocalCoilImageLoader$lambda$0;
            case 4:
                return new DateTimeFormatterBuilder().parseCaseInsensitive().appendOffset("+HHmmss", "Z").toFormatter();
            case 5:
                return new DateTimeFormatterBuilder().parseCaseInsensitive().appendOffset("+HHMM", "+0000").toFormatter();
            case 6:
                return new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(ChronoField.YEAR, 4, 10, SignStyle.EXCEEDS_PAD).appendLiteral('-').appendValue(ChronoField.MONTH_OF_YEAR, 2).toFormatter();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LocalDateFormat.Builder builder = new LocalDateFormat.Builder(new Headers.Builder(11), i5);
                builder.year();
                StringsKt__IndentKt.m991char(builder, '-');
                builder.monthNumber();
                StringsKt__IndentKt.m991char(builder, '-');
                builder.day();
                return new LocalDateFormat(Sink$CC.$default$build(builder));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                LocalDateFormat.Builder builder2 = new LocalDateFormat.Builder(new Headers.Builder(11), i5);
                builder2.year();
                builder2.monthNumber();
                builder2.day();
                return new LocalDateFormat(Sink$CC.$default$build(builder2));
            case 9:
                Headers.Builder builder3 = new Headers.Builder(11);
                LocalDateTimeFormat.Builder builder4 = new LocalDateTimeFormat.Builder(builder3);
                AbstractDateTimeFormat abstractDateTimeFormat = (AbstractDateTimeFormat) LocalDateFormatKt.ISO_DATE$delegate.getValue();
                abstractDateTimeFormat.getClass();
                builder3.add((FormatStructure) ((LocalDateFormat) abstractDateTimeFormat).actualFormat);
                StringsKt__IndentKt.alternativeParsing(builder4, new Function1[]{new InstantKt$$ExternalSyntheticLambda0(23)}, new InstantKt$$ExternalSyntheticLambda0(24));
                LocalTimeFormat localTimeFormat = (LocalTimeFormat) LocalTimeFormatKt.ISO_TIME$delegate.getValue();
                localTimeFormat.getClass();
                builder3.add((FormatStructure) localTimeFormat.actualFormat);
                return new LocalDateTimeFormat(Sink$CC.$default$build(builder4));
            case 10:
                LocalTimeFormat.Builder builder5 = new LocalTimeFormat.Builder(new Headers.Builder(11));
                builder5.addFormatStructureForTime(new BasicFormatStructure(new HourDirective()));
                StringsKt__IndentKt.m991char(builder5, ':');
                builder5.addFormatStructureForTime(new BasicFormatStructure(new MinuteDirective()));
                StringsKt__IndentKt.alternativeParsing(builder5, new Function1[]{new InstantKt$$ExternalSyntheticLambda0(25)}, new InstantKt$$ExternalSyntheticLambda0(26));
                return new LocalTimeFormat(Sink$CC.$default$build(builder5));
            case 11:
                UtcOffsetFormat.Builder builder6 = new UtcOffsetFormat.Builder(new Headers.Builder(11));
                StringsKt__IndentKt.alternativeParsing(builder6, new Function1[]{new JsonObject$$ExternalSyntheticLambda0(i4)}, new JsonObject$$ExternalSyntheticLambda0(i3));
                return new UtcOffsetFormat(Sink$CC.$default$build(builder6));
            case BasicTextKt.ShiftMeta /* 12 */:
                UtcOffsetFormat.Builder builder7 = new UtcOffsetFormat.Builder(new Headers.Builder(11));
                StringsKt__IndentKt.alternativeParsing(builder7, new Function1[]{new JsonObject$$ExternalSyntheticLambda0(i2)}, new JsonObject$$ExternalSyntheticLambda0(i));
                return new UtcOffsetFormat(Sink$CC.$default$build(builder7));
            case 13:
                Headers.Builder builder8 = new Headers.Builder(11);
                Padding padding = Padding.ZERO;
                builder8.add((FormatStructure) new SignedFormatStructure(new BasicFormatStructure(new UtcOffsetWholeHoursDirective(padding))));
                builder8.add((FormatStructure) new BasicFormatStructure(new UtcOffsetMinuteOfHourDirective(padding)));
                ArrayList arrayList = builder8.namesAndValues;
                arrayList.getClass();
                return new UtcOffsetFormat(new CachedFormatStructure(arrayList));
            case 14:
                LocalDateFormat.Builder builder9 = new LocalDateFormat.Builder(new Headers.Builder(11), i4);
                builder9.year();
                StringsKt__IndentKt.m991char(builder9, '-');
                builder9.monthNumber();
                return new YearMonthFormat(Sink$CC.$default$build(builder9));
            case OffsetKt.Horizontal /* 15 */:
                return new SealedClassSerializer("kotlinx.datetime.DateTimeUnit.DateBased", Reflection.getOrCreateKotlinClass(DateTimeUnit.DateBased.class), new KClass[]{Reflection.getOrCreateKotlinClass(DateTimeUnit.DayBased.class), Reflection.getOrCreateKotlinClass(DateTimeUnit.MonthBased.class)}, new KSerializer[]{DayBasedDateTimeUnitSerializer.INSTANCE, MonthBasedDateTimeUnitSerializer.INSTANCE});
            case 16:
                return new SealedClassSerializer("kotlinx.datetime.DateTimeUnit", Reflection.getOrCreateKotlinClass(DateTimeUnit.class), new KClass[]{Reflection.getOrCreateKotlinClass(DateTimeUnit.DayBased.class), Reflection.getOrCreateKotlinClass(DateTimeUnit.MonthBased.class), Reflection.getOrCreateKotlinClass(DateTimeUnit.TimeBased.class)}, new KSerializer[]{DayBasedDateTimeUnitSerializer.INSTANCE, MonthBasedDateTimeUnitSerializer.INSTANCE, TimeBasedDateTimeUnitSerializer.INSTANCE});
            case 17:
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
                if (StringsKt.isBlank("kotlinx.datetime.DayBased")) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                    return null;
                }
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("kotlinx.datetime.DayBased");
                IntSerializer intSerializer = IntSerializer.INSTANCE;
                classSerialDescriptorBuilder.element("days", IntSerializer.descriptor);
                return new SerialDescriptorImpl("kotlinx.datetime.DayBased", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr), classSerialDescriptorBuilder);
            case 18:
                SerialDescriptor[] serialDescriptorArr2 = new SerialDescriptor[0];
                if (StringsKt.isBlank("kotlinx.datetime.MonthBased")) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                    return null;
                }
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = new ClassSerialDescriptorBuilder("kotlinx.datetime.MonthBased");
                IntSerializer intSerializer2 = IntSerializer.INSTANCE;
                classSerialDescriptorBuilder2.element("months", IntSerializer.descriptor);
                return new SerialDescriptorImpl("kotlinx.datetime.MonthBased", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder2.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr2), classSerialDescriptorBuilder2);
            case 19:
                SerialDescriptor[] serialDescriptorArr3 = new SerialDescriptor[0];
                if (StringsKt.isBlank("kotlinx.datetime.TimeBased")) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Blank serial names are prohibited");
                    return null;
                }
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder3 = new ClassSerialDescriptorBuilder("kotlinx.datetime.TimeBased");
                LongSerializer longSerializer = LongSerializer.INSTANCE;
                classSerialDescriptorBuilder3.element("nanoseconds", LongSerializer.descriptor);
                return new SerialDescriptorImpl("kotlinx.datetime.TimeBased", StructureKind$MAP.INSTANCE$1, classSerialDescriptorBuilder3.elementNames.size(), ArraysKt___ArraysKt.toList(serialDescriptorArr3), classSerialDescriptorBuilder3);
            case 20:
                return JsonPrimitiveSerializer.descriptor;
            case 21:
                return JsonNullSerializer.descriptor;
            case 22:
                return JsonLiteralSerializer.descriptor;
            case 23:
                return JsonObjectSerializer.descriptor;
            case 24:
                return JsonArraySerializer.descriptor;
            case 25:
                return Boolean.FALSE;
            case 26:
                return "App in foreground";
            case 27:
                return "App in background";
            case 28:
                return "Error getting PackageInfo";
            default:
                return "Could not parse int";
        }
    }
}
