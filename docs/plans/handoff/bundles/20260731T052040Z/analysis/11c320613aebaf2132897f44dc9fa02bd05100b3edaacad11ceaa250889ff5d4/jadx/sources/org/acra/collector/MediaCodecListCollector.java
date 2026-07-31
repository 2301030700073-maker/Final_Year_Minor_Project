package org.acra.collector;

import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import kotlin.UIntArray;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Okio;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MediaCodecListCollector extends BaseReportFieldCollector {
    private static final String COLOR_FORMAT_PREFIX = "COLOR_";
    private final SparseArray<String> mAACProfileValues;
    private final SparseArray<String> mAVCLevelValues;
    private final SparseArray<String> mAVCProfileValues;
    private final SparseArray<String> mColorFormatValues;
    private final SparseArray<String> mH263LevelValues;
    private final SparseArray<String> mH263ProfileValues;
    private final SparseArray<String> mMPEG4LevelValues;
    private final SparseArray<String> mMPEG4ProfileValues;
    public static final Companion Companion = new Companion();
    private static final String[] MPEG4_TYPES = {"mp4", "mpeg4", "MP4", "MPEG4"};
    private static final String[] AVC_TYPES = {"avc", "h264", "AVC", "H264"};
    private static final String[] H263_TYPES = {"h263", "H263"};
    private static final String[] AAC_TYPES = {"aac", "AAC"};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class CodecType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CodecType[] $VALUES;
        public static final CodecType AVC = new CodecType("AVC", 0);
        public static final CodecType H263 = new CodecType("H263", 1);
        public static final CodecType MPEG4 = new CodecType("MPEG4", 2);
        public static final CodecType AAC = new CodecType("AAC", 3);

        private static final /* synthetic */ CodecType[] $values() {
            return new CodecType[]{AVC, H263, MPEG4, AAC};
        }

        static {
            CodecType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = Okio.enumEntries($values);
        }

        private CodecType(String str, int i) {
        }

        public static EnumEntries getEntries() {
            return $ENTRIES;
        }

        public static CodecType valueOf(String str) {
            return (CodecType) Enum.valueOf(CodecType.class, str);
        }

        public static CodecType[] values() {
            return (CodecType[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CodecType.values().length];
            try {
                iArr[CodecType.AVC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CodecType.H263.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CodecType.MPEG4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CodecType.AAC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MediaCodecListCollector() {
        super(ReportField.MEDIA_CODEC_LIST);
        this.mColorFormatValues = new SparseArray<>();
        this.mAVCLevelValues = new SparseArray<>();
        this.mAVCProfileValues = new SparseArray<>();
        this.mH263LevelValues = new SparseArray<>();
        this.mH263ProfileValues = new SparseArray<>();
        this.mMPEG4LevelValues = new SparseArray<>();
        this.mMPEG4ProfileValues = new SparseArray<>();
        this.mAACProfileValues = new SparseArray<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fd, code lost:
    
        r0.put("profileLevels", r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject collectCapabilitiesForType(android.media.MediaCodecInfo r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.collector.MediaCodecListCollector.collectCapabilitiesForType(android.media.MediaCodecInfo, java.lang.String):org.json.JSONObject");
    }

    private JSONObject collectMediaCodecList() {
        prepare();
        MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
        codecInfos.getClass();
        JSONObject jSONObject = new JSONObject();
        int length = codecInfos.length;
        for (int i = 0; i < length; i++) {
            MediaCodecInfo mediaCodecInfo = codecInfos[i];
            JSONObject jSONObject2 = new JSONObject();
            mediaCodecInfo.getClass();
            String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
            jSONObject2.put("name", mediaCodecInfo.getName()).put("isEncoder", mediaCodecInfo.isEncoder());
            JSONObject jSONObject3 = new JSONObject();
            UIntArray.Iterator it = Intrinsics.iterator(supportedTypes);
            while (it.hasNext()) {
                String str = (String) it.next();
                str.getClass();
                jSONObject3.put(str, collectCapabilitiesForType(mediaCodecInfo, str));
            }
            jSONObject2.put("supportedTypes", jSONObject3);
            jSONObject.put(String.valueOf(i), jSONObject2);
        }
        return jSONObject;
    }

    private CodecType identifyCodecType(MediaCodecInfo mediaCodecInfo) {
        String name = mediaCodecInfo.getName();
        name.getClass();
        for (String str : AVC_TYPES) {
            if (StringsKt.contains$default(name, str)) {
                return CodecType.AVC;
            }
        }
        for (String str2 : H263_TYPES) {
            if (StringsKt.contains$default(name, str2)) {
                return CodecType.H263;
            }
        }
        for (String str3 : MPEG4_TYPES) {
            if (StringsKt.contains$default(name, str3)) {
                return CodecType.MPEG4;
            }
        }
        for (String str4 : AAC_TYPES) {
            if (StringsKt.contains$default(name, str4)) {
                return CodecType.AAC;
            }
        }
        return null;
    }

    private void prepare() {
        try {
            UIntArray.Iterator it = Intrinsics.iterator(Class.forName("android.media.MediaCodecInfo$CodecCapabilities").getFields());
            while (it.hasNext()) {
                Field field = (Field) it.next();
                if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                    String name = field.getName();
                    name.getClass();
                    if (StringsKt__StringsJVMKt.startsWith(name, COLOR_FORMAT_PREFIX, false)) {
                        this.mColorFormatValues.put(field.getInt(null), field.getName());
                    }
                }
            }
            UIntArray.Iterator it2 = Intrinsics.iterator(Class.forName("android.media.MediaCodecInfo$CodecProfileLevel").getFields());
            while (it2.hasNext()) {
                Field field2 = (Field) it2.next();
                if (Modifier.isStatic(field2.getModifiers()) && Modifier.isFinal(field2.getModifiers())) {
                    String name2 = field2.getName();
                    name2.getClass();
                    if (StringsKt__StringsJVMKt.startsWith(name2, "AVCLevel", false)) {
                        this.mAVCLevelValues.put(field2.getInt(null), field2.getName());
                    } else {
                        String name3 = field2.getName();
                        name3.getClass();
                        if (StringsKt__StringsJVMKt.startsWith(name3, "AVCProfile", false)) {
                            this.mAVCProfileValues.put(field2.getInt(null), field2.getName());
                        } else {
                            String name4 = field2.getName();
                            name4.getClass();
                            if (StringsKt__StringsJVMKt.startsWith(name4, "H263Level", false)) {
                                this.mH263LevelValues.put(field2.getInt(null), field2.getName());
                            } else {
                                String name5 = field2.getName();
                                name5.getClass();
                                if (StringsKt__StringsJVMKt.startsWith(name5, "H263Profile", false)) {
                                    this.mH263ProfileValues.put(field2.getInt(null), field2.getName());
                                } else {
                                    String name6 = field2.getName();
                                    name6.getClass();
                                    if (StringsKt__StringsJVMKt.startsWith(name6, "MPEG4Level", false)) {
                                        this.mMPEG4LevelValues.put(field2.getInt(null), field2.getName());
                                    } else {
                                        String name7 = field2.getName();
                                        name7.getClass();
                                        if (StringsKt__StringsJVMKt.startsWith(name7, "MPEG4Profile", false)) {
                                            this.mMPEG4ProfileValues.put(field2.getInt(null), field2.getName());
                                        } else {
                                            String name8 = field2.getName();
                                            name8.getClass();
                                            if (StringsKt__StringsJVMKt.startsWith(name8, "AAC", false)) {
                                                this.mAACProfileValues.put(field2.getInt(null), field2.getName());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | SecurityException unused) {
        }
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        crashReportData.put(ReportField.MEDIA_CODEC_LIST, collectMediaCodecList());
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector
    public Collector.Order getOrder() {
        return Collector.Order.LATE;
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public boolean shouldCollect(Context context, CoreConfiguration coreConfiguration, ReportField reportField, ReportBuilder reportBuilder) {
        context.getClass();
        coreConfiguration.getClass();
        reportField.getClass();
        reportBuilder.getClass();
        return super.shouldCollect(context, coreConfiguration, reportField, reportBuilder);
    }
}
