package androidx.compose.foundation.text.contextmenu.internal;

import android.content.Context;
import android.os.Build;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DefaultTextContextMenuDropdownProvider_androidKt {
    public static final PopupProperties DefaultPopupProperties;

    static {
        DefaultPopupProperties = new PopupProperties((30 & 1) == 0, SecureFlagPolicy.Inherit, true, 0);
    }

    public static final void DefaultTextContextMenuDropdown(TextContextMenuSession textContextMenuSession, TextContextMenuData textContextMenuData, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        Context context;
        gapComposer.startRestartGroup(1904307118);
        int i2 = (gapComposer.changed(textContextMenuSession) ? 4 : 2) | i | (gapComposer.changedInstance(textContextMenuData) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            if (Build.VERSION.SDK_INT >= 28) {
                gapComposer.startReplaceGroup(-1009482584);
                context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1009433480);
                gapComposer.end(false);
                context = null;
            }
            boolean changedInstance = gapComposer.changedInstance(textContextMenuData) | ((i2 & 14) == 4) | gapComposer.changedInstance(context);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(textContextMenuData, context, textContextMenuSession, 8);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            gapComposer2 = gapComposer;
            ContextMenuUiKt.ContextMenuColumnBuilder(null, null, (Function1) rememberedValue, gapComposer2, 0, 3);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(textContextMenuSession, textContextMenuData, i, 10);
        }
    }

    /* renamed from: IconBox-RPmYEkk, reason: not valid java name */
    public static final void m202IconBoxRPmYEkk(final int i, final long j, GapComposer gapComposer, final int i2) {
        final int i3;
        int i4;
        RecomposeScopeImpl endRestartGroup;
        Function2 function2;
        gapComposer.startRestartGroup(-1240244237);
        if ((i2 & 6) == 0) {
            i3 = i;
            i4 = i2 | (gapComposer.changed(i3) ? 4 : 2);
        } else {
            i3 = i;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changed(j) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 19) != 18)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            boolean changed = ((i4 & 14) == 4) | gapComposer.changed(context);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = Integer.valueOf(context.obtainStyledAttributes(new int[]{i3}).getResourceId(0, -1));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            int intValue = ((Number) rememberedValue).intValue();
            if (intValue == -1) {
                endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    final int i5 = 0;
                    function2 = new Function2() { // from class: androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            int i6 = i5;
                            Unit unit = Unit.INSTANCE;
                            int i7 = i2;
                            long j2 = j;
                            int i8 = i3;
                            GapComposer gapComposer2 = (GapComposer) obj2;
                            ((Integer) obj3).intValue();
                            switch (i6) {
                                case 0:
                                    DefaultTextContextMenuDropdownProvider_androidKt.m202IconBoxRPmYEkk(i8, j2, gapComposer2, Updater.updateChangedFlags(i7 | 1));
                                    break;
                                default:
                                    DefaultTextContextMenuDropdownProvider_androidKt.m202IconBoxRPmYEkk(i8, j2, gapComposer2, Updater.updateChangedFlags(i7 | 1));
                                    break;
                            }
                            return unit;
                        }
                    };
                    endRestartGroup.block = function2;
                }
                return;
            }
            Painter painterResource = UnsignedKt.painterResource(intValue, 0, gapComposer);
            boolean z = (i4 & 112) == 32;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == obj) {
                rememberedValue2 = j == 16 ? null : new BlendModeColorFilter(j, 5);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            BoxKt.Box(ClipKt.paint$default(SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, ContextMenuSpec.IconSize), painterResource, null, ContentScale.Companion.Fit, RecyclerView.DECELERATION_RATE, (BlendModeColorFilter) rememberedValue2, 22), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final int i6 = 1;
            function2 = new Function2() { // from class: androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    int i62 = i6;
                    Unit unit = Unit.INSTANCE;
                    int i7 = i2;
                    long j2 = j;
                    int i8 = i;
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    ((Integer) obj3).intValue();
                    switch (i62) {
                        case 0:
                            DefaultTextContextMenuDropdownProvider_androidKt.m202IconBoxRPmYEkk(i8, j2, gapComposer2, Updater.updateChangedFlags(i7 | 1));
                            break;
                        default:
                            DefaultTextContextMenuDropdownProvider_androidKt.m202IconBoxRPmYEkk(i8, j2, gapComposer2, Updater.updateChangedFlags(i7 | 1));
                            break;
                    }
                    return unit;
                }
            };
            endRestartGroup.block = function2;
        }
    }

    public static final void OpenContextMenu(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, Function0 function0, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-2040393164);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(textContextMenuSession) : gapComposer.changedInstance(textContextMenuSession) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(textContextMenuDataProvider) : gapComposer.changedInstance(textContextMenuDataProvider) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        boolean z = false;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean z2 = (i2 & 112) == 32 || ((i2 & 64) != 0 && gapComposer.changed(textContextMenuDataProvider));
            Object rememberedValue = gapComposer.rememberedValue();
            int i3 = 14;
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (z2 || rememberedValue == neverEqualPolicy) {
                rememberedValue = new MaintainWindowPositionPopupPositionProvider(new PopupMenu$1(13, new Recomposer$$ExternalSyntheticLambda6(i3, textContextMenuDataProvider, function0)));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MaintainWindowPositionPopupPositionProvider maintainWindowPositionPopupPositionProvider = (MaintainWindowPositionPopupPositionProvider) rememberedValue;
            if ((i2 & 14) == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(textContextMenuSession))) {
                z = true;
            }
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new NavBackStackEntry$$ExternalSyntheticLambda0(i3, textContextMenuSession);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            AndroidPopup_androidKt.Popup(maintainWindowPositionPopupPositionProvider, (Function0) rememberedValue2, DefaultPopupProperties, Expect_jvmKt.rememberComposableLambda(1315155414, new HomeScreenKt$$ExternalSyntheticLambda17(9, textContextMenuDataProvider, textContextMenuSession), gapComposer), gapComposer, 3456, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) textContextMenuSession, (Object) textContextMenuDataProvider, (Object) function0, i, 6);
        }
    }

    public static final void ProvideDefaultTextContextMenuDropdown(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(1392105195);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ResultKt.ProvideBasicTextContextMenu(modifier, TextContextMenuProviderKt.LocalTextContextMenuDropdownProvider, composableLambdaImpl, gapComposer, ((i2 << 6) & 7168) | (i2 & 14) | 432);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidTextContextMenuToolbarProvider_androidKt$$ExternalSyntheticLambda0(modifier, composableLambdaImpl, i, i3);
        }
    }
}
