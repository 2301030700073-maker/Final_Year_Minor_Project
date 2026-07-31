package androidx.compose.foundation.text;

import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.CombinedClickableElement;
import androidx.compose.foundation.HoverableElement;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
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
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextLinkScope {
    public final SnapshotStateList annotators;
    public AnnotatedString text;
    public final ParcelableSnapshotMutableState textLayoutResult$delegate = Updater.mutableStateOf$default(null);

    public TextLinkScope(AnnotatedString annotatedString) {
        ScrollState$$ExternalSyntheticLambda4 scrollState$$ExternalSyntheticLambda4 = new ScrollState$$ExternalSyntheticLambda4(26);
        annotatedString.getClass();
        AnnotatedString.Builder builder = new AnnotatedString.Builder(annotatedString);
        ArrayList arrayList = builder.annotations;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            List list = (List) scrollState$$ExternalSyntheticLambda4.invoke(((AnnotatedString.Builder.MutableRange) arrayList.get(i)).toRange(Integer.MIN_VALUE));
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i2);
                arrayList3.add(new AnnotatedString.Builder.MutableRange(range.start, range.end, range.item, range.tag));
            }
            CollectionsKt.addAll(arrayList3, arrayList2);
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

    public final void LinksComposables(Composer composer, int i) {
        int i2;
        char c;
        boolean z;
        Modifier then;
        Modifier then2;
        Modifier then3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1154651354);
        char c2 = 2;
        int i3 = (gapComposer.changedInstance(this) ? 4 : 2) | i;
        boolean z2 = false;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            AndroidUriHandler androidUriHandler = (AndroidUriHandler) gapComposer.consume(CompositionLocalsKt.LocalUriHandler);
            AnnotatedString annotatedString = this.text;
            List linkAnnotations = annotatedString.getLinkAnnotations(annotatedString.text.length());
            int size = linkAnnotations.size();
            int i4 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) linkAnnotations.get(i4);
                int i5 = range.start;
                Object obj = range.item;
                if (i5 != range.end) {
                    gapComposer.startReplaceGroup(725478935);
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new MutableInteractionSourceImpl();
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
                    c = c2;
                    Modifier graphicsLayer = ColorKt.graphicsLayer(Modifier.Companion.$$INSTANCE, new Navigator$$ExternalSyntheticLambda1(9, this, range));
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ScrollState$$ExternalSyntheticLambda4(27);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    then = SemanticsModifierKt.semantics(graphicsLayer, z2, (Function1) rememberedValue2).then(new TextRangeLayoutModifier(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(7, this, range))).then(new HoverableElement(mutableInteractionSourceImpl));
                    PointerIcon.Companion.getClass();
                    then2 = then.then(new PointerHoverIconModifierElement(PointerId.pointerIconHand));
                    boolean changedInstance = gapComposer.changedInstance(this) | gapComposer.changed(range) | gapComposer.changedInstance(androidUriHandler);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(this, range, androidUriHandler);
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    then3 = then2.then(new CombinedClickableElement(mutableInteractionSourceImpl, (Function0) rememberedValue3, null, false, true));
                    BoxKt.Box(then3, gapComposer, 0);
                    LinkAnnotation linkAnnotation = (LinkAnnotation) obj;
                    TextLinkStyles styles = linkAnnotation.getStyles();
                    if (styles == null || (styles.style == null && styles.focusedStyle == null && styles.hoveredStyle == null && styles.pressedStyle == null)) {
                        i2 = i3;
                        z = false;
                        gapComposer.startReplaceGroup(728331710);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(726303039);
                        Object rememberedValue4 = gapComposer.rememberedValue();
                        if (rememberedValue4 == neverEqualPolicy) {
                            rememberedValue4 = new LinkStateInteractionSourceObserver(mutableInteractionSourceImpl);
                            gapComposer.updateRememberedValue(rememberedValue4);
                        }
                        LinkStateInteractionSourceObserver linkStateInteractionSourceObserver = (LinkStateInteractionSourceObserver) rememberedValue4;
                        Object rememberedValue5 = gapComposer.rememberedValue();
                        Continuation continuation = null;
                        if (rememberedValue5 == neverEqualPolicy) {
                            rememberedValue5 = new ThumbNode$onAttach$1(linkStateInteractionSourceObserver, continuation, 22);
                            gapComposer.updateRememberedValue(rememberedValue5);
                        }
                        Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue5);
                        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = linkStateInteractionSourceObserver.interactionState;
                        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = linkStateInteractionSourceObserver.interactionState;
                        Object valueOf = Boolean.valueOf((parcelableSnapshotMutableIntState.getIntValue() & 2) != 0);
                        Object valueOf2 = Boolean.valueOf((parcelableSnapshotMutableIntState2.getIntValue() & 1) != 0);
                        Object valueOf3 = Boolean.valueOf((parcelableSnapshotMutableIntState2.getIntValue() & 4) != 0);
                        TextLinkStyles styles2 = linkAnnotation.getStyles();
                        Object obj2 = styles2 != null ? styles2.style : null;
                        i2 = i3;
                        TextLinkStyles styles3 = linkAnnotation.getStyles();
                        Object obj3 = styles3 != null ? styles3.focusedStyle : null;
                        TextLinkStyles styles4 = linkAnnotation.getStyles();
                        Object obj4 = styles4 != null ? styles4.hoveredStyle : null;
                        TextLinkStyles styles5 = linkAnnotation.getStyles();
                        Object obj5 = styles5 != null ? styles5.pressedStyle : null;
                        Object obj6 = obj4;
                        Object[] objArr = new Object[7];
                        objArr[0] = valueOf;
                        objArr[1] = valueOf2;
                        objArr[c] = valueOf3;
                        objArr[3] = obj2;
                        objArr[4] = obj3;
                        objArr[5] = obj6;
                        objArr[6] = obj5;
                        boolean changedInstance2 = gapComposer.changedInstance(this) | gapComposer.changed(range);
                        Object rememberedValue6 = gapComposer.rememberedValue();
                        if (changedInstance2 || rememberedValue6 == neverEqualPolicy) {
                            rememberedValue6 = new Navigator$$ExternalSyntheticLambda1(this, range, linkStateInteractionSourceObserver, 8);
                            gapComposer.updateRememberedValue(rememberedValue6);
                        }
                        StyleAnnotation(objArr, (Function1) rememberedValue6, gapComposer, (i2 << 6) & 896);
                        z = false;
                        gapComposer.end(false);
                    }
                    gapComposer.end(z);
                } else {
                    i2 = i3;
                    c = c2;
                    z = z2;
                    gapComposer.startReplaceGroup(728345598);
                    gapComposer.end(z);
                }
                i4++;
                z2 = z;
                c2 = c;
                i3 = i2;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 7, this);
        }
    }

    public final void StyleAnnotation(Object[] objArr, Function1 function1, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
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
            Headers.Builder builder = new Headers.Builder(10);
            ArrayList arrayList = builder.namesAndValues;
            arrayList.add(function1);
            builder.addSpread(objArr);
            Object[] array = arrayList.toArray(new Object[arrayList.size()]);
            boolean changedInstance = gapComposer.changedInstance(this) | ((i3 & 112) == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new BasicTextKt$$ExternalSyntheticLambda5(this, function1, i4);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(array, (Function1) rememberedValue, (Composer) gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(this, objArr, function1, i, 5);
        }
    }
}
