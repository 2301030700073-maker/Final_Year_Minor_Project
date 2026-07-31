package com.fsck.k9.ui.compose;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.AbstractCameraPresenceSource$ObserverWrapper;
import androidx.camera.core.impl.Observable;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.preference.Preference;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.message.QuotedTextMode;
import com.fsck.k9.message.SimpleMessageFormat;
import com.fsck.k9.message.quote.TextQuoteCreator;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$2;
import com.fsck.k9.view.MessageWebView;
import com.google.android.material.button.MaterialButton;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.DesugarCollections;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.internal.ContextScope;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QuotedMessagePresenter implements Observable {
    public Object account;
    public boolean forcePlainText;
    public final Object generalSettingsManager;
    public Object messageCompose;
    public Object quoteStyle;
    public Object quotedHtmlContent;
    public Serializable quotedTextFormat;
    public Object quotedTextMode;
    public final Object textQuoteCreator;
    public Object view;

    public QuotedMessagePresenter(ReadonlySharedFlow readonlySharedFlow, ContextScope contextScope, List list, Context context) {
        readonlySharedFlow.getClass();
        this.textQuoteCreator = new Object();
        this.generalSettingsManager = new CopyOnWriteArrayList();
        this.messageCompose = null;
        this.forcePlainText = false;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            str.getClass();
            arrayList.add(ActionBar.create(str, null, null));
        }
        this.view = arrayList;
        this.quotedTextMode = readonlySharedFlow;
        this.quoteStyle = contextScope;
        this.quotedTextFormat = new AtomicBoolean(false);
        Object systemService = context.getSystemService("camera");
        systemService.getClass();
        this.account = (CameraManager) systemService;
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(Executor executor, Observable.Observer observer) {
        List unmodifiableList;
        Throwable th;
        executor.getClass();
        ((CopyOnWriteArrayList) this.generalSettingsManager).add(new AbstractCameraPresenceSource$ObserverWrapper(executor, observer));
        synchronized (this.textQuoteCreator) {
            try {
                if (!this.forcePlainText && !((CopyOnWriteArrayList) this.generalSettingsManager).isEmpty()) {
                    Log.i("CameraPresenceSrc", "First observer added. Starting monitoring.");
                    this.forcePlainText = true;
                    startMonitoring();
                }
                unmodifiableList = DesugarCollections.unmodifiableList((List) this.view);
                th = (Throwable) this.messageCompose;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        executor.execute(new Processor$$ExternalSyntheticLambda1(th, new AbstractCameraPresenceSource$ObserverWrapper(executor, observer), unmodifiableList, 3));
    }

    public ListenableFuture fetchData() {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            JobKt.launch$default((ContextScope) this.quoteStyle, null, null, new DataStoreImpl$data$1$3(this, callbackToFutureAdapter$Completer, (Continuation) null, 1), 3);
            callbackToFutureAdapter$Completer.tag = "FetchData for PipeCameraPresence0";
            return callbackToFutureAdapter$SafeFuture;
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
            return callbackToFutureAdapter$SafeFuture;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0108, code lost:
    
        r9 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x022b A[EDGE_INSN: B:51:0x022b->B:52:0x022b BREAK  A[LOOP:0: B:18:0x0076->B:66:0x0076, LOOP_LABEL: LOOP:0: B:18:0x0076->B:66:0x0076], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x022b A[EDGE_INSN: B:77:0x022b->B:52:0x022b BREAK  A[LOOP:0: B:18:0x0076->B:66:0x0076], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void populateUIWithQuotedMessage(com.fsck.k9.mailstore.MessageViewInfo r27, boolean r28, com.fsck.k9.activity.MessageCompose.Action r29) {
        /*
            Method dump skipped, instructions count: 1446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.compose.QuotedMessagePresenter.populateUIWithQuotedMessage(com.fsck.k9.mailstore.MessageViewInfo, boolean, com.fsck.k9.activity.MessageCompose$Action):void");
    }

    public void processSourceMessageText(Part part, int i, int i2, boolean z) {
        LockableDatabase lockableDatabase = (LockableDatabase) this.view;
        Part findFirstPartByMimeType = JisSupport.findFirstPartByMimeType(part, UtilsKt.MIME_TYPE_TEXT_PLAIN);
        if (findFirstPartByMimeType == null) {
            return;
        }
        String textFromPart = JisSupport.getTextFromPart(findFirstPartByMimeType, -1L);
        net.thunderbird.core.logging.legacy.Log.d("Loading message with offset %d, length %d. Text length is %d.", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(textFromPart.length()));
        if (i2 != 0) {
            try {
                StringBuilder sb = new StringBuilder();
                if (i == 0) {
                    int i3 = i2 + 4;
                    if (textFromPart.substring(i2, i3).equals("\r\n\r\n")) {
                        sb.append(textFromPart.substring(i3));
                        ((EditText) lockableDatabase.storageFilesProvider).setText(StringsKt__StringsJVMKt.replace$default(sb.toString(), "\r\n", "\n"));
                        textFromPart = textFromPart.substring(i, i2 + i);
                    }
                }
                int i4 = i + i2;
                if (i4 == textFromPart.length()) {
                    int i5 = i - 2;
                    if (textFromPart.substring(i5, i).equals("\r\n")) {
                        sb.append(textFromPart.substring(0, i5));
                        ((EditText) lockableDatabase.storageFilesProvider).setText(StringsKt__StringsJVMKt.replace$default(sb.toString(), "\r\n", "\n"));
                        textFromPart = textFromPart.substring(i, i2 + i);
                    }
                }
                sb.append(textFromPart.substring(0, i));
                sb.append(textFromPart.substring(i4));
                ((EditText) lockableDatabase.storageFilesProvider).setText(StringsKt__StringsJVMKt.replace$default(sb.toString(), "\r\n", "\n"));
                textFromPart = textFromPart.substring(i, i2 + i);
            } catch (IndexOutOfBoundsException unused) {
                net.thunderbird.core.logging.legacy.Log.d("The identity field from the draft contains an invalid bodyOffset/bodyLength", new Object[0]);
            }
        }
        if (z) {
            ((EditText) lockableDatabase.mSchemaDefinition).setText(StringsKt__StringsJVMKt.replace$default(textFromPart, "\r\n", "\n"));
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(Observable.Observer observer) {
        AbstractCameraPresenceSource$ObserverWrapper abstractCameraPresenceSource$ObserverWrapper;
        Iterator it = ((CopyOnWriteArrayList) this.generalSettingsManager).iterator();
        while (true) {
            if (!it.hasNext()) {
                abstractCameraPresenceSource$ObserverWrapper = null;
                break;
            } else {
                abstractCameraPresenceSource$ObserverWrapper = (AbstractCameraPresenceSource$ObserverWrapper) it.next();
                if (abstractCameraPresenceSource$ObserverWrapper.mObserver.equals(observer)) {
                    break;
                }
            }
        }
        if (abstractCameraPresenceSource$ObserverWrapper != null) {
            ((CopyOnWriteArrayList) this.generalSettingsManager).remove(abstractCameraPresenceSource$ObserverWrapper);
        }
        synchronized (this.textQuoteCreator) {
            try {
                if (this.forcePlainText && ((CopyOnWriteArrayList) this.generalSettingsManager).isEmpty()) {
                    Log.i("CameraPresenceSrc", "Last observer removed. Stopping monitoring.");
                    this.forcePlainText = false;
                    Log.i("PipePresenceSrc", "Stopping camera ID flow collection.");
                    if (((AtomicBoolean) this.quotedTextFormat).compareAndSet(true, false)) {
                        StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.quotedHtmlContent;
                        if (standaloneCoroutine != null) {
                            standaloneCoroutine.cancel(null);
                        }
                        this.quotedHtmlContent = null;
                    }
                }
            } finally {
            }
        }
    }

    public void showOrHideQuotedText(QuotedTextMode quotedTextMode) {
        this.quotedTextMode = quotedTextMode;
        LockableDatabase lockableDatabase = (LockableDatabase) this.view;
        SimpleMessageFormat simpleMessageFormat = (SimpleMessageFormat) this.quotedTextFormat;
        EditText editText = (EditText) lockableDatabase.storageFilesProvider;
        View view = (View) lockableDatabase.mWriteLock;
        MaterialButton materialButton = (MaterialButton) lockableDatabase.mReadLock;
        View view2 = (View) lockableDatabase.context;
        MessageWebView messageWebView = (MessageWebView) lockableDatabase.inTransaction;
        int ordinal = quotedTextMode.ordinal();
        if (ordinal == 0) {
            materialButton.setVisibility(8);
            view.setVisibility(8);
            editText.setVisibility(8);
            messageWebView.setVisibility(8);
            view2.setVisibility(8);
            return;
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            materialButton.setVisibility(0);
            view.setVisibility(8);
            editText.setVisibility(8);
            messageWebView.setVisibility(8);
            view2.setVisibility(8);
            return;
        }
        materialButton.setVisibility(8);
        view.setVisibility(0);
        if (simpleMessageFormat == SimpleMessageFormat.HTML) {
            editText.setVisibility(8);
            messageWebView.setVisibility(0);
            view2.setVisibility(0);
        } else {
            editText.setVisibility(0);
            messageWebView.setVisibility(8);
            view2.setVisibility(8);
        }
    }

    public void startMonitoring() {
        int i = 1;
        if (!((AtomicBoolean) this.quotedTextFormat).compareAndSet(false, true)) {
            Log.i("PipePresenceSrc", "Monitoring is already active. Ignoring redundant start call.");
            return;
        }
        Log.i("PipePresenceSrc", "Starting to collect camera ID flow.");
        StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.quotedHtmlContent;
        Continuation continuation = null;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        this.quotedHtmlContent = FlowKt.launchIn(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1((Flow) this.quotedTextMode, 1), new DraggableNode$drag$2(this, ref$BooleanRef, continuation, i), 2), new DefaultGeneralSettingsManager$generalSettings$2(this, continuation, i), 0), (ContextScope) this.quoteStyle);
    }

    public void updateState(List list, Throwable th) {
        boolean z;
        boolean z2;
        List unmodifiableList;
        Throwable th2;
        synchronized (this.textQuoteCreator) {
            try {
                if (th != null) {
                    if (((Throwable) this.messageCompose) != null && ((List) this.view).isEmpty()) {
                        z2 = false;
                        this.messageCompose = th;
                        this.view = Collections.EMPTY_LIST;
                    }
                    z2 = true;
                    this.messageCompose = th;
                    this.view = Collections.EMPTY_LIST;
                } else {
                    list.getClass();
                    if (((Throwable) this.messageCompose) == null && ((List) this.view).equals(list)) {
                        z = false;
                        this.messageCompose = null;
                        this.view = list;
                        z2 = z;
                    }
                    z = true;
                    this.messageCompose = null;
                    this.view = list;
                    z2 = z;
                }
                unmodifiableList = DesugarCollections.unmodifiableList((List) this.view);
                th2 = (Throwable) this.messageCompose;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (z2) {
            StringBuilder sb = new StringBuilder("Data changed. Notifying ");
            sb.append(((CopyOnWriteArrayList) this.generalSettingsManager).size());
            sb.append(" observers. Error: ");
            sb.append(th2 != null);
            Log.d("CameraPresenceSrc", sb.toString());
            Iterator it = ((CopyOnWriteArrayList) this.generalSettingsManager).iterator();
            while (it.hasNext()) {
                AbstractCameraPresenceSource$ObserverWrapper abstractCameraPresenceSource$ObserverWrapper = (AbstractCameraPresenceSource$ObserverWrapper) it.next();
                abstractCameraPresenceSource$ObserverWrapper.mExecutor.execute(new Processor$$ExternalSyntheticLambda1(th2, abstractCameraPresenceSource$ObserverWrapper, unmodifiableList, 3));
            }
        }
    }

    public QuotedMessagePresenter(MessageCompose messageCompose, LockableDatabase lockableDatabase, LegacyAccountDto legacyAccountDto) {
        this.textQuoteCreator = (TextQuoteCreator) CloseableKt.get$default(TextQuoteCreator.class);
        this.generalSettingsManager = (GeneralSettingsManager) CloseableKt.get$default(GeneralSettingsManager.class);
        this.messageCompose = messageCompose;
        this.view = lockableDatabase;
        this.account = legacyAccountDto;
        this.quotedTextMode = QuotedTextMode.NONE;
        this.quoteStyle = legacyAccountDto.getQuoteStyle();
        Preference.AnonymousClass1 anonymousClass1 = new Preference.AnonymousClass1(5, this);
        ((MaterialButton) lockableDatabase.mReadLock).setOnClickListener(anonymousClass1);
        ((View) lockableDatabase.context).setOnClickListener(anonymousClass1);
        ((View) lockableDatabase.generalSettingsManager).setOnClickListener(anonymousClass1);
    }
}
