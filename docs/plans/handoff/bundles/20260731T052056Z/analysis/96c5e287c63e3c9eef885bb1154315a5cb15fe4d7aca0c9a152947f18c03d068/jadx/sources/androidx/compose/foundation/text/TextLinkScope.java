package androidx.compose.foundation.text;

import androidx.compose.foundation.CombinedClickableElement;
import androidx.compose.foundation.HoverableElement;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.pointer.PointerHoverIconModifierElement;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Headers;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextLinkScope {
    public final SnapshotStateList annotators;
    public AnnotatedString text;
    public final ParcelableSnapshotMutableState textLayoutResult$delegate = Updater.mutableStateOf$default(null);

    public TextLinkScope(AnnotatedString annotatedString) {
        ChipKt$$ExternalSyntheticLambda2 chipKt$$ExternalSyntheticLambda2 = new ChipKt$$ExternalSyntheticLambda2(6);
        annotatedString.getClass();
        AnnotatedString.Builder builder = new AnnotatedString.Builder(annotatedString);
        ArrayList arrayList = builder.annotations;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            List list = (List) chipKt$$ExternalSyntheticLambda2.invoke(((AnnotatedString.Builder.MutableRange) arrayList.get(i)).toRange(Integer.MIN_VALUE));
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i2);
                arrayList3.add(new AnnotatedString.Builder.MutableRange(range.start, range.end, range.item, range.tag));
            }
            CollectionsKt.addAll(arrayList2, arrayList3);
        }
        arrayList.clear();
        arrayList.addAll(arrayList2);
        this.text = builder.toAnnotatedString();
        this.annotators = new SnapshotStateList();
    }

    public static AnnotatedString.Range calculateVisibleLinkRange(AnnotatedString.Range range, TextLayoutResult textLayoutResult) {
        int lineEnd = textLayoutResult.multiParagraph.getLineEnd(r3.lineCount - 1, false);
        if (range.start < lineEnd) {
            return AnnotatedString.Range.copy$default(range, null, Math.min(range.end, lineEnd), 11);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final void LinksComposables(int i, GapComposer gapComposer) {
        int i2;
        char c;
        boolean z;
        Modifier then;
        Modifier then2;
        Modifier then3;
        Object obj;
        gapComposer.startRestartGroup(1154651354);
        char c2 = 2;
        int i3 = (gapComposer.changedInstance(this) ? 4 : 2) | i;
        ?? r8 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            AndroidUriHandler androidUriHandler = (AndroidUriHandler) gapComposer.consume(CompositionLocalsKt.LocalUriHandler);
            AnnotatedString annotatedString = this.text;
            List linkAnnotations = annotatedString.getLinkAnnotations(0, annotatedString.text.length());
            int size = linkAnnotations.size();
            int i4 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) linkAnnotations.get(i4);
                int i5 = range.start;
                Object obj2 = range.item;
                if (i5 != range.end) {
                    gapComposer.startReplaceGroup(725478935);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Object obj3 = Composer$Companion.Empty;
                    Object obj4 = rememberedValue;
                    if (rememberedValue == obj3) {
                        Object mutableInteractionSourceImpl = new MutableInteractionSourceImpl();
                        gapComposer.updateRememberedValue(mutableInteractionSourceImpl);
                        obj4 = mutableInteractionSourceImpl;
                    }
                    MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) obj4;
                    c = c2;
                    Modifier graphicsLayer = ColorKt.graphicsLayer(Modifier.Companion.$$INSTANCE, new NavController$$ExternalSyntheticLambda3(3, this, range));
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    int i6 = 4;
                    Object obj5 = rememberedValue2;
                    if (rememberedValue2 == obj3) {
                        Object chipKt$$ExternalSyntheticLambda2 = new ChipKt$$ExternalSyntheticLambda2(7);
                        gapComposer.updateRememberedValue(chipKt$$ExternalSyntheticLambda2);
                        obj5 = chipKt$$ExternalSyntheticLambda2;
                    }
                    then = SemanticsModifierKt.semantics(graphicsLayer, r8, (Function1) obj5).then(new TextRangeLayoutModifier(new TextLinkScope$$ExternalSyntheticLambda3(r8, this, range))).then(new HoverableElement(mutableInteractionSourceImpl2));
                    PointerIcon.Companion.getClass();
                    then2 = then.then(new PointerHoverIconModifierElement(PointerId.pointerIconHand));
                    boolean changedInstance = gapComposer.changedInstance(this) | gapComposer.changed(range) | gapComposer.changedInstance(androidUriHandler);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    Object obj6 = rememberedValue3;
                    if (changedInstance || rememberedValue3 == obj3) {
                        Object recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(this, range, androidUriHandler);
                        gapComposer.updateRememberedValue(recomposer$$ExternalSyntheticLambda6);
                        obj6 = recomposer$$ExternalSyntheticLambda6;
                    }
                    then3 = then2.then(new CombinedClickableElement(mutableInteractionSourceImpl2, (Function0) obj6, null, false));
                    BoxKt.Box(then3, gapComposer, r8);
                    LinkAnnotation linkAnnotation = (LinkAnnotation) obj2;
                    TextLinkStyles styles = linkAnnotation.getStyles();
                    if (styles == null || (styles.style == null && styles.focusedStyle == null && styles.hoveredStyle == null && styles.pressedStyle == null)) {
                        i2 = i3;
                        z = r8;
                        gapComposer.startReplaceGroup(728331710);
                        gapComposer.end(z);
                    } else {
                        gapComposer.startReplaceGroup(726303039);
                        Object rememberedValue4 = gapComposer.rememberedValue();
                        Object obj7 = rememberedValue4;
                        if (rememberedValue4 == obj3) {
                            Object linkStateInteractionSourceObserver = new LinkStateInteractionSourceObserver(mutableInteractionSourceImpl2);
                            gapComposer.updateRememberedValue(linkStateInteractionSourceObserver);
                            obj7 = linkStateInteractionSourceObserver;
                        }
                        LinkStateInteractionSourceObserver linkStateInteractionSourceObserver2 = (LinkStateInteractionSourceObserver) obj7;
                        Object rememberedValue5 = gapComposer.rememberedValue();
                        Continuation continuation = null;
                        Object obj8 = rememberedValue5;
                        if (rememberedValue5 == obj3) {
                            Object thumbNode$onAttach$1 = new ThumbNode$onAttach$1(10, linkStateInteractionSourceObserver2, continuation);
                            gapComposer.updateRememberedValue(thumbNode$onAttach$1);
                            obj8 = thumbNode$onAttach$1;
                        }
                        Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) obj8);
                        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = linkStateInteractionSourceObserver2.interactionState;
                        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = linkStateInteractionSourceObserver2.interactionState;
                        Boolean valueOf = Boolean.valueOf((parcelableSnapshotMutableIntState.getIntValue() & 2) != 0 ? true : r8);
                        Boolean valueOf2 = Boolean.valueOf((parcelableSnapshotMutableIntState2.getIntValue() & 1) != 0 ? true : r8);
                        Boolean valueOf3 = Boolean.valueOf((parcelableSnapshotMutableIntState2.getIntValue() & 4) != 0 ? true : r8);
                        TextLinkStyles styles2 = linkAnnotation.getStyles();
                        SpanStyle spanStyle = styles2 != null ? styles2.style : null;
                        boolean z2 = r8;
                        TextLinkStyles styles3 = linkAnnotation.getStyles();
                        SpanStyle spanStyle2 = styles3 != null ? styles3.focusedStyle : null;
                        i2 = i3;
                        TextLinkStyles styles4 = linkAnnotation.getStyles();
                        SpanStyle spanStyle3 = styles4 != null ? styles4.hoveredStyle : null;
                        TextLinkStyles styles5 = linkAnnotation.getStyles();
                        SpanStyle spanStyle4 = styles5 != null ? styles5.pressedStyle : null;
                        SpanStyle spanStyle5 = spanStyle3;
                        Object[] objArr = new Object[7];
                        objArr[z2 ? 1 : 0] = valueOf;
                        objArr[1] = valueOf2;
                        objArr[c] = valueOf3;
                        objArr[3] = spanStyle;
                        objArr[4] = spanStyle2;
                        objArr[5] = spanStyle5;
                        objArr[6] = spanStyle4;
                        boolean changedInstance2 = gapComposer.changedInstance(this) | gapComposer.changed(range);
                        Object rememberedValue6 = gapComposer.rememberedValue();
                        if (changedInstance2 || rememberedValue6 == obj3) {
                            Object navController$$ExternalSyntheticLambda3 = new NavController$$ExternalSyntheticLambda3(this, range, linkStateInteractionSourceObserver2, i6);
                            gapComposer.updateRememberedValue(navController$$ExternalSyntheticLambda3);
                            obj = navController$$ExternalSyntheticLambda3;
                        } else {
                            obj = rememberedValue6;
                        }
                        StyleAnnotation(objArr, (Function1) obj, gapComposer, (i2 << 6) & 896);
                        z = z2 ? 1 : 0;
                        gapComposer.end(z);
                    }
                    gapComposer.end(z);
                } else {
                    i2 = i3;
                    c = c2;
                    z = r8;
                    gapComposer.startReplaceGroup(728345598);
                    gapComposer.end(z);
                }
                i4++;
                r8 = z;
                c2 = c;
                i3 = i2;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HintHandler$$ExternalSyntheticLambda0(i, 9, this);
        }
    }

    public final void StyleAnnotation(Object[] objArr, Function1 function1, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-2083052099);
        int i2 = (i & 48) == 0 ? (gapComposer.changedInstance(function1) ? 32 : 16) | i : i;
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(this) ? 256 : 128;
        }
        gapComposer.startMovableGroup(-358306546, Integer.valueOf(objArr.length));
        int i3 = i2 | (gapComposer.changed(objArr.length) ? 4 : 0);
        for (Object obj : objArr) {
            i3 |= gapComposer.changedInstance(obj) ? 4 : 0;
        }
        gapComposer.end(false);
        if ((i3 & 14) == 0) {
            i3 |= 2;
        }
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Headers.Builder builder = new Headers.Builder(2);
            ArrayList arrayList = builder.namesAndValues;
            builder.add(function1);
            builder.addSpread(objArr);
            Object[] array = arrayList.toArray(new Object[arrayList.size()]);
            boolean changedInstance = gapComposer.changedInstance(this) | ((i3 & 112) == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new BasicTextKt$$ExternalSyntheticLambda10(this, function1, i4);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(array, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) this, (Object) objArr, (Object) function1, i, 5);
        }
    }
}
