package androidx.compose.foundation.text.selection;

import android.app.RemoteAction;
import android.content.Context;
import android.text.TextUtils;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.sync.MutexImpl;
import org.wikipedia.util.GeoUtil$$ExternalSyntheticApiModelOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl implements PlatformSelectionBehaviors {
    public final Context context;
    public final CoroutineContext coroutineContext;
    public final LocaleList localeList;
    public final SelectedTextType selectedTextType;
    public TextClassifier textClassificationSession;
    public final MutexImpl mutex = new MutexImpl();
    public final ParcelableSnapshotMutableState textClassificationResult$delegate = Updater.mutableStateOf$default(null);
    public final Object AssistantItemKey = new Object();

    public PlatformSelectionBehaviorsImpl(CoroutineContext coroutineContext, Context context, SelectedTextType selectedTextType, LocaleList localeList) {
        this.coroutineContext = coroutineContext;
        this.context = context;
        this.selectedTextType = selectedTextType;
        this.localeList = localeList;
    }

    /* renamed from: addSmartSelectionTextContextMenuItems-YmzfRxQ$foundation, reason: not valid java name */
    public final void m226addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(TextContextMenuBuilderScope textContextMenuBuilderScope, CharSequence charSequence, long j, Function1 function1) {
        MutexImpl mutexImpl = this.mutex;
        TextClassification textClassification = null;
        if (mutexImpl.tryLock()) {
            TextClassificationResult textClassificationResult = (TextClassificationResult) this.textClassificationResult$delegate.getValue();
            TextClassification textClassification2 = (textClassificationResult != null && TextRange.m640equalsimpl0(j, textClassificationResult.selection) && Intrinsics.areEqual(charSequence, textClassificationResult.text)) ? textClassificationResult.textClassification : null;
            mutexImpl.unlock(null);
            textClassification = textClassification2;
        }
        if (textClassification == null) {
            function1.invoke(textContextMenuBuilderScope);
            return;
        }
        boolean isEmpty = textClassification.getActions().isEmpty();
        Object obj = this.AssistantItemKey;
        if (!isEmpty) {
            textContextMenuBuilderScope.components.add(new TextContextMenuTextClassificationItem(obj, textClassification, 0));
        } else if ((textClassification.getIcon() != null || !TextUtils.isEmpty(textClassification.getLabel())) && (textClassification.getIntent() != null || textClassification.getOnClickListener() != null)) {
            textContextMenuBuilderScope.components.add(new TextContextMenuTextClassificationItem(obj, textClassification, -1));
        }
        function1.invoke(textContextMenuBuilderScope);
        List<RemoteAction> actions = textClassification.getActions();
        int size = actions.size();
        for (int i = 0; i < size; i++) {
            actions.get(i);
            if (i > 0) {
                textContextMenuBuilderScope.components.add(new TextContextMenuTextClassificationItem(obj, textClassification, i));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0079 A[Catch: all -> 0x008c, TryCatch #1 {all -> 0x008c, blocks: (B:24:0x0071, B:26:0x0079, B:28:0x0081), top: B:23:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* renamed from: classifyText-M8tDOmk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m227classifyTextM8tDOmk(java.lang.CharSequence r17, long r18, android.view.textclassifier.TextClassifier r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl.m227classifyTextM8tDOmk(java.lang.CharSequence, long, android.view.textclassifier.TextClassifier, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final android.os.LocaleList getAndroidLocalList() {
        LocaleList localeList = this.localeList;
        if (localeList == null) {
            GeoUtil$$ExternalSyntheticApiModelOutline0.m();
            return GeoUtil$$ExternalSyntheticApiModelOutline0.m(new Locale[]{PlatformLocaleKt.platformLocaleDelegate.getCurrent().get().platformLocale});
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(localeList, 10));
        Iterator it = localeList.localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(((androidx.compose.ui.text.intl.Locale) it.next()).platformLocale);
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        return GeoUtil$$ExternalSyntheticApiModelOutline0.m((Locale[]) Arrays.copyOf(localeArr, localeArr.length));
    }

    /* renamed from: onShowContextMenuOrSelectionToolbar-Sb-Bc2M, reason: not valid java name */
    public final Object m228onShowContextMenuOrSelectionToolbarSbBc2M(CharSequence charSequence, long j, SuspendLambda suspendLambda) {
        if (charSequence.length() == 0 || TextRange.m641getCollapsedimpl(j)) {
            return Unit.INSTANCE;
        }
        return AwaitKt.withContext(this.coroutineContext, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this, new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(j, this, charSequence, null), null), suspendLambda);
    }
}
