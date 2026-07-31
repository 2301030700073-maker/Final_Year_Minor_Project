package org.wikipedia.games.onthisday;

import java.util.List;
import kotlin.Lazy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayGameViewModel$GameState$$serializer implements GeneratedSerializer {
    public static final OnThisDayGameViewModel$GameState$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        OnThisDayGameViewModel$GameState$$serializer onThisDayGameViewModel$GameState$$serializer = new OnThisDayGameViewModel$GameState$$serializer();
        INSTANCE = onThisDayGameViewModel$GameState$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameState", onThisDayGameViewModel$GameState$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("totalQuestions", true);
        pluginGeneratedSerialDescriptor.addElement("currentQuestionIndex", true);
        pluginGeneratedSerialDescriptor.addElement("answerState", true);
        pluginGeneratedSerialDescriptor.addElement("currentQuestionState", false);
        pluginGeneratedSerialDescriptor.addElement("status", true);
        pluginGeneratedSerialDescriptor.addElement("gamePlayDate", true);
        pluginGeneratedSerialDescriptor.addElement("lastActiveDate", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = OnThisDayGameViewModel.GameState.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, lazyArr[2].getValue(), OnThisDayGameViewModel$QuestionState$$serializer.INSTANCE, intSerializer, stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = OnThisDayGameViewModel.GameState.$childSerializers;
        Object obj = null;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        List list = null;
        OnThisDayGameViewModel.QuestionState questionState = null;
        String str = null;
        String str2 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), list);
                    i |= 4;
                    break;
                case 3:
                    questionState = (OnThisDayGameViewModel.QuestionState) beginStructure.decodeSerializableElement(serialDescriptor, 3, OnThisDayGameViewModel$QuestionState$$serializer.INSTANCE, questionState);
                    i |= 8;
                    break;
                case 4:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    continue;
                case 5:
                    str = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    continue;
                case 6:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    continue;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new OnThisDayGameViewModel.GameState(i, i2, i3, list, questionState, i4, str, str2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r6, r0) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0021, code lost:
    
        if (r1 != org.wikipedia.settings.Prefs.getOtdGameQuestionsPerDay()) goto L7;
     */
    @Override // kotlinx.serialization.KSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(kotlin.uuid.UuidKt r7, java.lang.Object r8) {
        /*
            r6 = this;
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState r8 = (org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameState) r8
            r8.getClass()
            java.util.List r6 = r8.answerState
            int r0 = r8.currentQuestionIndex
            int r1 = r8.totalQuestions
            kotlinx.serialization.descriptors.SerialDescriptor r2 = org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState$$serializer.descriptor
            kotlin.uuid.UuidKt r7 = r7.beginStructure(r2)
            kotlin.Lazy[] r3 = org.wikipedia.games.onthisday.OnThisDayGameViewModel.GameState.$childSerializers
            boolean r4 = r7.shouldEncodeElementDefault(r2)
            r5 = 0
            if (r4 == 0) goto L1b
            goto L23
        L1b:
            org.wikipedia.settings.Prefs r4 = org.wikipedia.settings.Prefs.INSTANCE
            int r4 = org.wikipedia.settings.Prefs.getOtdGameQuestionsPerDay()
            if (r1 == r4) goto L26
        L23:
            r7.encodeIntElement(r5, r1, r2)
        L26:
            boolean r1 = r7.shouldEncodeElementDefault(r2)
            if (r1 == 0) goto L2d
            goto L2f
        L2d:
            if (r0 == 0) goto L33
        L2f:
            r1 = 1
            r7.encodeIntElement(r1, r0, r2)
        L33:
            boolean r0 = r7.shouldEncodeElementDefault(r2)
            r1 = 5
            if (r0 == 0) goto L3b
            goto L50
        L3b:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r1)
        L40:
            if (r5 >= r1) goto L4a
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            r0.add(r4)
            int r5 = r5 + 1
            goto L40
        L4a:
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
            if (r0 != 0) goto L5c
        L50:
            r0 = 2
            r3 = r3[r0]
            java.lang.Object r3 = r3.getValue()
            kotlinx.serialization.KSerializer r3 = (kotlinx.serialization.KSerializer) r3
            r7.encodeSerializableElement(r2, r0, r3, r6)
        L5c:
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$QuestionState$$serializer r6 = org.wikipedia.games.onthisday.OnThisDayGameViewModel$QuestionState$$serializer.INSTANCE
            org.wikipedia.games.onthisday.OnThisDayGameViewModel$QuestionState r0 = r8.currentQuestionState
            java.lang.String r3 = r8.lastActiveDate
            java.lang.String r4 = r8.gamePlayDate
            int r8 = r8.status
            r5 = 3
            r7.encodeSerializableElement(r2, r5, r6, r0)
            boolean r6 = r7.shouldEncodeElementDefault(r2)
            if (r6 == 0) goto L71
            goto L73
        L71:
            if (r8 == 0) goto L77
        L73:
            r6 = 4
            r7.encodeIntElement(r6, r8, r2)
        L77:
            boolean r6 = r7.shouldEncodeElementDefault(r2)
            java.lang.String r8 = ""
            if (r6 == 0) goto L80
            goto L86
        L80:
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r8)
            if (r6 != 0) goto L89
        L86:
            r7.encodeStringElement(r2, r1, r4)
        L89:
            boolean r6 = r7.shouldEncodeElementDefault(r2)
            if (r6 == 0) goto L90
            goto L96
        L90:
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r8)
            if (r6 != 0) goto L9a
        L96:
            r6 = 6
            r7.encodeStringElement(r2, r6, r3)
        L9a:
            r7.endStructure(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel$GameState$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
