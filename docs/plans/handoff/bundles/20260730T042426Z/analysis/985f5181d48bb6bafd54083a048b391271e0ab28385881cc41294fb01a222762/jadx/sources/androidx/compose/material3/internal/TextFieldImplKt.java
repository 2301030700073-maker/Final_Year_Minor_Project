package androidx.compose.material3.internal;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdParentData;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: TextFieldImpl.kt */
/* loaded from: classes.dex */
public abstract class TextFieldImplKt {
    private static final Modifier IconDefaultSizeModifier;
    private static final float MinFocusedLabelLineHeight;
    private static final float MinSupportingTextLineHeight;
    private static final float TextFieldPadding;
    private static final long ZeroConstraints = ConstraintsKt.Constraints(0, 0, 0, 0);
    private static final float HorizontalIconPadding = Dp.m2424constructorimpl(12);
    private static final float SupportingTopPadding = Dp.m2424constructorimpl(4);
    private static final float PrefixSuffixTextPadding = Dp.m2424constructorimpl(2);
    private static final float MinTextLineHeight = Dp.m2424constructorimpl(24);

    /* compiled from: TextFieldImpl.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TextFieldType.values().length];
            try {
                iArr[TextFieldType.Filled.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextFieldType.Outlined.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[InputPhase.values().length];
            try {
                iArr2[InputPhase.Focused.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private static final boolean CommonDecorationBox$lambda$15$lambda$7(State state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final boolean CommonDecorationBox$lambda$15$lambda$9(State state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:342:0x04f7, code lost:
    
        if (r1 != false) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x04ad, code lost:
    
        if (r1 != false) goto L323;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x060c  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0617  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x062b  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0653  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x069b  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x06ed  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0729  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0734  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x075a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x07d8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x082d  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x08aa  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x08d4  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x091f  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0a1b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x09c8  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0903  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x08dc  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x08b2  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x07a0  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0753  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0a2f  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x029e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CommonDecorationBox(final androidx.compose.material3.internal.TextFieldType r48, final java.lang.String r49, final kotlin.jvm.functions.Function2 r50, final androidx.compose.ui.text.input.VisualTransformation r51, final kotlin.jvm.functions.Function2 r52, kotlin.jvm.functions.Function2 r53, kotlin.jvm.functions.Function2 r54, kotlin.jvm.functions.Function2 r55, kotlin.jvm.functions.Function2 r56, kotlin.jvm.functions.Function2 r57, kotlin.jvm.functions.Function2 r58, boolean r59, boolean r60, boolean r61, final androidx.compose.foundation.interaction.InteractionSource r62, final androidx.compose.foundation.layout.PaddingValues r63, final androidx.compose.material3.TextFieldColors r64, final kotlin.jvm.functions.Function2 r65, androidx.compose.runtime.Composer r66, final int r67, final int r68, final int r69) {
        /*
            Method dump skipped, instructions count: 2653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.TextFieldImplKt.CommonDecorationBox(androidx.compose.material3.internal.TextFieldType, java.lang.String, kotlin.jvm.functions.Function2, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.foundation.layout.PaddingValues, androidx.compose.material3.TextFieldColors, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Decoration-3J-VO9M, reason: not valid java name */
    public static final void m793Decoration3JVO9M(final long j, final TextStyle textStyle, final Function2 function2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(1208685580);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changed(textStyle) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 256 : 128;
        }
        if ((i2 & 147) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1208685580, i2, -1, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:298)");
            }
            ProvideContentColorTextStyleKt.m790ProvideContentColorTextStyle3JVO9M(j, textStyle, function2, startRestartGroup, i2 & 1022);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.internal.TextFieldImplKt$Decoration$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    TextFieldImplKt.m793Decoration3JVO9M(j, textStyle, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Decoration-Iv8Zu3U, reason: not valid java name */
    public static final void m794DecorationIv8Zu3U(final long j, final Function2 function2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(660142980);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 19) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(660142980, i2, -1, "androidx.compose.material3.internal.Decoration (TextFieldImpl.kt:303)");
            }
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m1298boximpl(j)), function2, startRestartGroup, (i2 & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.internal.TextFieldImplKt$Decoration$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    TextFieldImplKt.m794DecorationIv8Zu3U(j, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    public static final Modifier defaultErrorSemantics(Modifier modifier, boolean z, final String str) {
        return z ? SemanticsModifierKt.semantics$default(modifier, false, new Function1() { // from class: androidx.compose.material3.internal.TextFieldImplKt$defaultErrorSemantics$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((SemanticsPropertyReceiver) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                SemanticsPropertiesKt.error(semanticsPropertyReceiver, str);
            }
        }, 1, null) : modifier;
    }

    public static final Modifier textFieldBackground(Modifier modifier, final ColorProducer colorProducer, final Shape shape) {
        return DrawModifierKt.drawWithCache(modifier, new Function1() { // from class: androidx.compose.material3.internal.TextFieldImplKt$textFieldBackground$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DrawResult invoke(CacheDrawScope cacheDrawScope) {
                final Outline mo128createOutlinePq9zytI = Shape.this.mo128createOutlinePq9zytI(cacheDrawScope.m1085getSizeNHjbRc(), cacheDrawScope.getLayoutDirection(), cacheDrawScope);
                final ColorProducer colorProducer2 = colorProducer;
                return cacheDrawScope.onDrawBehind(new Function1() { // from class: androidx.compose.material3.internal.TextFieldImplKt$textFieldBackground$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((DrawScope) obj);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(DrawScope drawScope) {
                        OutlineKt.m1385drawOutlinewDX37Ww(drawScope, Outline.this, colorProducer2.mo678invoke0d7_KjU(), (r17 & 4) != 0 ? 1.0f : 0.0f, (r17 & 8) != 0 ? Fill.INSTANCE : null, (r17 & 16) != 0 ? null : null, (r17 & 32) != 0 ? DrawScope.Companion.m1516getDefaultBlendMode0nO6VwU() : 0);
                    }
                });
            }
        });
    }

    public static final int widthOrZero(Placeable placeable) {
        if (placeable != null) {
            return placeable.getWidth();
        }
        return 0;
    }

    public static final int heightOrZero(Placeable placeable) {
        if (placeable != null) {
            return placeable.getHeight();
        }
        return 0;
    }

    /* renamed from: animateBorderStrokeAsState-NuRrP5Q, reason: not valid java name */
    public static final State m797animateBorderStrokeAsStateNuRrP5Q(boolean z, boolean z2, boolean z3, TextFieldColors textFieldColors, float f, float f2, Composer composer, int i) {
        State rememberUpdatedState;
        State rememberUpdatedState2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2047013045, i, -1, "androidx.compose.material3.internal.animateBorderStrokeAsState (TextFieldImpl.kt:441)");
        }
        long m755indicatorColorXeAY9LY$material3_release = textFieldColors.m755indicatorColorXeAY9LY$material3_release(z, z2, z3);
        if (z) {
            composer.startReplaceGroup(1023053998);
            rememberUpdatedState = SingleValueAnimationKt.m46animateColorAsStateeuL9pac(m755indicatorColorXeAY9LY$material3_release, AnimationSpecKt.tween$default(150, 0, null, 6, null), null, null, composer, 48, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1023165505);
            rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1298boximpl(m755indicatorColorXeAY9LY$material3_release), composer, 0);
            composer.endReplaceGroup();
        }
        State state = rememberUpdatedState;
        if (z) {
            composer.startReplaceGroup(1023269417);
            rememberUpdatedState2 = AnimateAsStateKt.m47animateDpAsStateAjpBEmI(z3 ? f : f2, AnimationSpecKt.tween$default(150, 0, null, 6, null), null, null, composer, 48, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1023478388);
            rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(Dp.m2422boximpl(f2), composer, (i >> 15) & 14);
            composer.endReplaceGroup();
        }
        State rememberUpdatedState3 = SnapshotStateKt.rememberUpdatedState(BorderStrokeKt.m114BorderStrokecXLIe8U(((Dp) rememberUpdatedState2.getValue()).m2430unboximpl(), ((Color) state.getValue()).m1312unboximpl()), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return rememberUpdatedState3;
    }

    public static final Object getLayoutId(IntrinsicMeasurable intrinsicMeasurable) {
        Object parentData = intrinsicMeasurable.getParentData();
        LayoutIdParentData layoutIdParentData = parentData instanceof LayoutIdParentData ? (LayoutIdParentData) parentData : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.getLayoutId();
        }
        return null;
    }

    static {
        float f = 16;
        TextFieldPadding = Dp.m2424constructorimpl(f);
        MinFocusedLabelLineHeight = Dp.m2424constructorimpl(f);
        MinSupportingTextLineHeight = Dp.m2424constructorimpl(f);
        float f2 = 48;
        IconDefaultSizeModifier = SizeKt.m277defaultMinSizeVpY3zN4(Modifier.Companion, Dp.m2424constructorimpl(f2), Dp.m2424constructorimpl(f2));
    }

    public static final long getZeroConstraints() {
        return ZeroConstraints;
    }

    public static final float getTextFieldPadding() {
        return TextFieldPadding;
    }

    public static final float getHorizontalIconPadding() {
        return HorizontalIconPadding;
    }

    public static final float getSupportingTopPadding() {
        return SupportingTopPadding;
    }

    public static final float getPrefixSuffixTextPadding() {
        return PrefixSuffixTextPadding;
    }

    public static final float getMinTextLineHeight() {
        return MinTextLineHeight;
    }

    public static final float getMinFocusedLabelLineHeight() {
        return MinFocusedLabelLineHeight;
    }

    public static final float getMinSupportingTextLineHeight() {
        return MinSupportingTextLineHeight;
    }

    public static final Modifier getIconDefaultSizeModifier() {
        return IconDefaultSizeModifier;
    }
}
