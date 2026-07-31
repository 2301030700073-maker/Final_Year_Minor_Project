package androidx.compose.material3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.material3.internal.ParentSemanticsNode;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ChipKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ChipKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        TextLinkStyles styles;
        SpanStyle spanStyle;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                SemanticsPropertiesKt.m616setRolekuIjeqM((SemanticsPropertyReceiver) obj, 1);
                return unit;
            case 1:
                TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj;
                Integer previousWordOffset = textFieldPreparedSelection.getPreviousWordOffset();
                if (previousWordOffset == null) {
                    return null;
                }
                int intValue = previousWordOffset.intValue();
                long j = textFieldPreparedSelection.selection;
                int i2 = TextRange.$r8$clinit;
                return new DeleteSurroundingTextCommand(((int) (4294967295L & j)) - intValue, 0);
            case 2:
                TextFieldPreparedSelection textFieldPreparedSelection2 = (TextFieldPreparedSelection) obj;
                Integer nextWordOffset = textFieldPreparedSelection2.getNextWordOffset();
                if (nextWordOffset == null) {
                    return null;
                }
                int intValue2 = nextWordOffset.intValue();
                long j2 = textFieldPreparedSelection2.selection;
                int i3 = TextRange.$r8$clinit;
                return new DeleteSurroundingTextCommand(0, intValue2 - ((int) (4294967295L & j2)));
            case 3:
                TextFieldPreparedSelection textFieldPreparedSelection3 = (TextFieldPreparedSelection) obj;
                Integer lineStartByOffset = textFieldPreparedSelection3.getLineStartByOffset();
                if (lineStartByOffset == null) {
                    return null;
                }
                int intValue3 = lineStartByOffset.intValue();
                long j3 = textFieldPreparedSelection3.selection;
                int i4 = TextRange.$r8$clinit;
                return new DeleteSurroundingTextCommand(((int) (4294967295L & j3)) - intValue3, 0);
            case 4:
                TextFieldPreparedSelection textFieldPreparedSelection4 = (TextFieldPreparedSelection) obj;
                Integer lineEndByOffset = textFieldPreparedSelection4.getLineEndByOffset();
                if (lineEndByOffset == null) {
                    return null;
                }
                int intValue4 = lineEndByOffset.intValue();
                long j4 = textFieldPreparedSelection4.selection;
                int i5 = TextRange.$r8$clinit;
                return new DeleteSurroundingTextCommand(0, intValue4 - ((int) (4294967295L & j4)));
            case 5:
                List list = (List) obj;
                Object obj2 = list.get(1);
                obj2.getClass();
                Orientation orientation = ((Boolean) obj2).booleanValue() ? Orientation.Vertical : Orientation.Horizontal;
                Object obj3 = list.get(0);
                obj3.getClass();
                return new TextFieldScrollerPosition(orientation, ((Float) obj3).floatValue());
            case 6:
                AnnotatedString.Range range = (AnnotatedString.Range) obj;
                Object obj4 = range.item;
                if (!(obj4 instanceof LinkAnnotation) || (styles = ((LinkAnnotation) obj4).getStyles()) == null || (styles.style == null && styles.focusedStyle == null && styles.hoveredStyle == null && styles.pressedStyle == null)) {
                    return Room.arrayListOf(range);
                }
                Object obj5 = range.item;
                obj5.getClass();
                TextLinkStyles styles2 = ((LinkAnnotation) obj5).getStyles();
                if (styles2 == null || (spanStyle = styles2.style) == null) {
                    spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65535);
                }
                return Room.arrayListOf(range, new AnnotatedString.Range(range.start, range.end, spanStyle));
            case 7:
                ((SemanticsPropertyReceiver) obj).set(SemanticsProperties.LinkTestMarker, unit);
                return unit;
            case 8:
                Context context = (Context) obj;
                List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain"), 0);
                ArrayList arrayList = new ArrayList(queryIntentActivities.size());
                int size = queryIntentActivities.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ResolveInfo resolveInfo = queryIntentActivities.get(i6);
                    ResolveInfo resolveInfo2 = resolveInfo;
                    if (!context.getPackageName().equals(resolveInfo2.activityInfo.packageName)) {
                        ActivityInfo activityInfo = resolveInfo2.activityInfo;
                        if (activityInfo.exported) {
                            String str = activityInfo.permission;
                            if (str != null && context.checkSelfPermission(str) != 0) {
                            }
                        }
                    }
                    arrayList.add(resolveInfo);
                }
                return arrayList;
            case 9:
                ((Long) obj).getClass();
                return unit;
            case 10:
                return unit;
            case 11:
                return unit;
            case 12:
                Offset offset = (Offset) obj;
                long j5 = offset.packedValue;
                return (9223372034707292159L & j5) != 9205357640488583168L ? new AnimationVector2D(Float.intBitsToFloat((int) (j5 >> 32)), Float.intBitsToFloat((int) (offset.packedValue & 4294967295L))) : SelectionMagnifierKt.UnspecifiedAnimationVector2D;
            case IMAGE_VALUE:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                return new Offset((Float.floatToRawIntBits(animationVector2D.v1) << 32) | (Float.floatToRawIntBits(animationVector2D.v2) & 4294967295L));
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return new SelectionRegistrarImpl(((Long) obj).longValue());
            case 15:
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                SemanticsPropertiesKt.m616setRolekuIjeqM((SemanticsPropertyReceiver) obj, 0);
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                SemanticsPropertiesKt.m616setRolekuIjeqM((SemanticsPropertyReceiver) obj, 0);
                return unit;
            case RADIO_GROUP_VALUE:
                SemanticsPropertiesKt.setTraversalGroup((SemanticsPropertyReceiver) obj);
                return unit;
            case RADIO_BUTTON_VALUE:
                return unit;
            case RADIO_ROW_VALUE:
                return unit;
            case RADIO_COLUMN_VALUE:
                KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpec.KeyframesSpecConfig) obj;
                keyframesSpecConfig.durationMillis = 6000;
                Float valueOf = Float.valueOf(90.0f);
                keyframesSpecConfig.at(valueOf, 300).easing = MotionTokens.EasingEmphasizedDecelerateCubicBezier;
                keyframesSpecConfig.at(valueOf, 1500);
                Float valueOf2 = Float.valueOf(180.0f);
                keyframesSpecConfig.at(valueOf2, 1800);
                keyframesSpecConfig.at(valueOf2, 3000);
                Float valueOf3 = Float.valueOf(270.0f);
                keyframesSpecConfig.at(valueOf3, 3300);
                keyframesSpecConfig.at(valueOf3, 4500);
                Float valueOf4 = Float.valueOf(360.0f);
                keyframesSpecConfig.at(valueOf4, 4800);
                keyframesSpecConfig.at(valueOf4, 6000);
                return unit;
            case SIZE_BOX_VALUE:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.IsContainer;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[5];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, Boolean.TRUE);
                return unit;
            case 23:
                return unit;
            case 24:
                List list2 = (List) obj;
                return new TopAppBarState(((Number) list2.get(0)).floatValue(), ((Number) list2.get(1)).floatValue(), ((Number) list2.get(2)).floatValue());
            case 25:
                return unit;
            case 26:
                return unit;
            case 27:
                return unit;
            case 28:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                ParentSemanticsNode parentSemanticsNode = (ParentSemanticsNode) traversableNode;
                parentSemanticsNode.semanticsConsumed = false;
                HitTestResultKt.invalidateSemantics(parentSemanticsNode);
                return Boolean.FALSE;
            default:
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                SVG svg = layoutNodeDrawScope.canvasDrawScope.drawContext;
                long m796getSizeNHjbRc = svg.m796getSizeNHjbRc();
                svg.getCanvas().save();
                try {
                    ((PopupMenu$1) svg.rootElement).m1clipRectN_I0leg(-3.4028235E38f, RecyclerView.DECELERATION_RATE, Float.MAX_VALUE, Float.MAX_VALUE, 1);
                    layoutNodeDrawScope.drawContent();
                    return unit;
                } finally {
                    Animation.CC.m(svg, m796getSizeNHjbRc);
                }
        }
    }
}
