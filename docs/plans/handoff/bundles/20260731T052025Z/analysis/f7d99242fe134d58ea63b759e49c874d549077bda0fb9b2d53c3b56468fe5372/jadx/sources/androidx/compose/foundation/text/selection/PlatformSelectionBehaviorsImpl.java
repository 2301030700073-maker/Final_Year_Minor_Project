package androidx.compose.foundation.text.selection;

import android.app.RemoteAction;
import android.content.Context;
import android.text.TextUtils;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* renamed from: access$classifyText-M8tDOmk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m304access$classifyTextM8tDOmk(androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl r16, java.lang.CharSequence r17, long r18, android.view.textclassifier.TextClassifier r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl.m304access$classifyTextM8tDOmk(androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl, java.lang.CharSequence, long, android.view.textclassifier.TextClassifier, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: addSmartSelectionTextContextMenuItems-YmzfRxQ$foundation, reason: not valid java name */
    public final void m305addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(TextContextMenuBuilderScope textContextMenuBuilderScope, String str, long j, SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0) {
        MutexImpl mutexImpl = this.mutex;
        TextClassification textClassification = null;
        if (mutexImpl.tryLock()) {
            TextClassificationResult textClassificationResult = (TextClassificationResult) this.textClassificationResult$delegate.getValue();
            TextClassification textClassification2 = (textClassificationResult != null && TextRange.m698equalsimpl0(j, textClassificationResult.selection) && Intrinsics.areEqual(str, textClassificationResult.text)) ? textClassificationResult.textClassification : null;
            mutexImpl.unlock(null);
            textClassification = textClassification2;
        }
        if (textClassification == null) {
            simpleActor$$ExternalSyntheticLambda0.invoke(textContextMenuBuilderScope);
            return;
        }
        boolean isEmpty = textClassification.getActions().isEmpty();
        Object obj = this.AssistantItemKey;
        if (!isEmpty) {
            textContextMenuBuilderScope.components.add(new TextContextMenuTextClassificationItem(obj, textClassification, 0));
        } else if ((textClassification.getIcon() != null || !TextUtils.isEmpty(textClassification.getLabel())) && (textClassification.getIntent() != null || textClassification.getOnClickListener() != null)) {
            textContextMenuBuilderScope.components.add(new TextContextMenuTextClassificationItem(obj, textClassification, -1));
        }
        simpleActor$$ExternalSyntheticLambda0.invoke(textContextMenuBuilderScope);
        List<RemoteAction> actions = textClassification.getActions();
        int size = actions.size();
        for (int i = 0; i < size; i++) {
            actions.get(i);
            if (i > 0) {
                textContextMenuBuilderScope.components.add(new TextContextMenuTextClassificationItem(obj, textClassification, i));
            }
        }
    }

    public final android.os.LocaleList getAndroidLocalList() {
        LocaleList localeList = this.localeList;
        if (localeList == null) {
            OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m$1();
            return OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(new Locale[]{PlatformLocaleKt.platformLocaleDelegate.getCurrent().get().platformLocale});
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(localeList, 10));
        Iterator it = localeList.localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(((androidx.compose.ui.text.intl.Locale) it.next()).platformLocale);
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        return OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((Locale[]) Arrays.copyOf(localeArr, localeArr.length));
    }
}
