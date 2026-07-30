package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: Card.kt */
/* loaded from: classes.dex */
public abstract class CardKt {
    public static final void Card(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, final Function3 function3, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        Shape shape2;
        CardColors cardColors2;
        CardElevation cardElevation2;
        BorderStroke borderStroke2;
        Modifier modifier3;
        Shape shape3;
        CardColors cardColors3;
        CardElevation cardElevation3;
        BorderStroke borderStroke3;
        int i4;
        CardElevation cardElevation4;
        final CardElevation cardElevation5;
        final BorderStroke borderStroke4;
        int i5;
        int i6;
        int i7;
        Composer startRestartGroup = composer.startRestartGroup(1179621553);
        int i8 = i2 & 1;
        if (i8 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (startRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                shape2 = shape;
                if (startRestartGroup.changed(shape2)) {
                    i7 = 32;
                    i3 |= i7;
                }
            } else {
                shape2 = shape;
            }
            i7 = 16;
            i3 |= i7;
        } else {
            shape2 = shape;
        }
        if ((i & 384) == 0) {
            if ((i2 & 4) == 0) {
                cardColors2 = cardColors;
                if (startRestartGroup.changed(cardColors2)) {
                    i6 = 256;
                    i3 |= i6;
                }
            } else {
                cardColors2 = cardColors;
            }
            i6 = 128;
            i3 |= i6;
        } else {
            cardColors2 = cardColors;
        }
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                cardElevation2 = cardElevation;
                if (startRestartGroup.changed(cardElevation2)) {
                    i5 = 2048;
                    i3 |= i5;
                }
            } else {
                cardElevation2 = cardElevation;
            }
            i5 = 1024;
            i3 |= i5;
        } else {
            cardElevation2 = cardElevation;
        }
        int i9 = i2 & 16;
        if (i9 != 0) {
            i3 |= 24576;
            borderStroke2 = borderStroke;
        } else {
            borderStroke2 = borderStroke;
            if ((i & 24576) == 0) {
                i3 |= startRestartGroup.changed(borderStroke2) ? 16384 : 8192;
            }
        }
        if ((i2 & 32) != 0) {
            i3 |= 196608;
        } else if ((i & 196608) == 0) {
            i3 |= startRestartGroup.changedInstance(function3) ? PKIFailureInfo.unsupportedVersion : PKIFailureInfo.notAuthorized;
        }
        if ((74899 & i3) != 74898 || !startRestartGroup.getSkipping()) {
            startRestartGroup.startDefaults();
            if ((i & 1) == 0 || startRestartGroup.getDefaultsInvalid()) {
                modifier3 = i8 != 0 ? Modifier.Companion : modifier2;
                if ((i2 & 2) != 0) {
                    shape3 = CardDefaults.INSTANCE.getShape(startRestartGroup, 6);
                    i3 &= -113;
                } else {
                    shape3 = shape2;
                }
                if ((i2 & 4) != 0) {
                    cardColors3 = CardDefaults.INSTANCE.cardColors(startRestartGroup, 6);
                    i3 &= -897;
                } else {
                    cardColors3 = cardColors2;
                }
                if ((i2 & 8) != 0) {
                    cardElevation3 = CardDefaults.INSTANCE.m623cardElevationaqJV_2Y(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, startRestartGroup, 1572864, 63);
                    i3 &= -7169;
                } else {
                    cardElevation3 = cardElevation2;
                }
                borderStroke3 = i9 != 0 ? null : borderStroke;
                CardElevation cardElevation6 = cardElevation3;
                i4 = i3;
                cardElevation4 = cardElevation6;
            } else {
                startRestartGroup.skipToGroupEnd();
                if ((i2 & 2) != 0) {
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                }
                modifier3 = modifier2;
                shape3 = shape2;
                cardColors3 = cardColors2;
                borderStroke3 = borderStroke2;
                i4 = i3;
                cardElevation4 = cardElevation2;
            }
            startRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1179621553, i4, -1, "androidx.compose.material3.Card (Card.kt:87)");
            }
            CardElevation cardElevation7 = cardElevation4;
            SurfaceKt.m741SurfaceT9BRK9s(modifier3, shape3, cardColors3.m621containerColorvNxB06k$material3_release(true), cardColors3.m622contentColorvNxB06k$material3_release(true), 0.0f, ((Dp) cardElevation4.shadowElevation$material3_release(true, null, startRestartGroup, ((i4 >> 3) & 896) | 54).getValue()).m2430unboximpl(), borderStroke3, ComposableLambdaKt.rememberComposableLambda(664103990, true, new Function2() { // from class: androidx.compose.material3.CardKt$Card$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i10) {
                    if ((i10 & 3) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(664103990, i10, -1, "androidx.compose.material3.Card.<anonymous> (Card.kt:96)");
                    }
                    Function3 function32 = Function3.this;
                    Modifier.Companion companion = Modifier.Companion;
                    MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                    Modifier materializeModifier = ComposedModifierKt.materializeModifier(composer2, companion);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    Function0 constructor = companion2.getConstructor();
                    if (!(composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor);
                    } else {
                        composer2.useNode();
                    }
                    Composer m1043constructorimpl = Updater.m1043constructorimpl(composer2);
                    Updater.m1044setimpl(m1043constructorimpl, columnMeasurePolicy, companion2.getSetMeasurePolicy());
                    Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
                    Function2 setCompositeKeyHash = companion2.getSetCompositeKeyHash();
                    if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                        m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                    }
                    Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion2.getSetModifier());
                    function32.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, startRestartGroup, 54), startRestartGroup, (i4 & 14) | 12582912 | (i4 & 112) | (3670016 & (i4 << 6)), 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            cardColors2 = cardColors3;
            cardElevation5 = cardElevation7;
            borderStroke4 = borderStroke3;
        } else {
            startRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            shape3 = shape2;
            cardElevation5 = cardElevation2;
            borderStroke4 = borderStroke2;
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final Shape shape4 = shape3;
            final CardColors cardColors4 = cardColors2;
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.CardKt$Card$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i10) {
                    CardKt.Card(Modifier.this, shape4, cardColors4, cardElevation5, borderStroke4, function3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ElevatedCard(androidx.compose.ui.Modifier r19, androidx.compose.ui.graphics.Shape r20, androidx.compose.material3.CardColors r21, androidx.compose.material3.CardElevation r22, final kotlin.jvm.functions.Function3 r23, androidx.compose.runtime.Composer r24, final int r25, final int r26) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.ElevatedCard(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }
}
