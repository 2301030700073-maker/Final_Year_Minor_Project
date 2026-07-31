package com.fsck.k9.ui.messagesource;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.ui.base.loader.LoaderStateObserver;
import com.google.android.material.textview.MaterialTextView;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageHeadersFragment extends Fragment {
    public final Lazy messageHeadersViewModel$delegate = ResultKt.lazy(LazyThreadSafetyMode.NONE, new Http2Connection.ReaderRunnable(19, this, new GapPending$keyMap$2(9, this)));

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.message_view_headers, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        String string = requireArguments().getString("reference");
        if (string == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing argument reference");
            return;
        }
        MessageReference parse = MathKt.parse(string);
        if (parse == null) {
            Regex$$ExternalSyntheticBUOutline0.m((Object) "Invalid message reference: ".concat(string));
            return;
        }
        MaterialTextView materialTextView = (MaterialTextView) view.findViewById(R.id.message_source);
        MessageHeadersViewModel messageHeadersViewModel = (MessageHeadersViewModel) this.messageHeadersViewModel$delegate.getValue();
        messageHeadersViewModel.getClass();
        CoroutineLiveData coroutineLiveData = messageHeadersViewModel.messageHeaderLiveData;
        if (coroutineLiveData == null) {
            coroutineLiveData = ViewModelKt.liveData(EmptyCoroutineContext.INSTANCE, new Preferences$getAccountsFlow$1(new DI$$ExternalSyntheticLambda0(21, messageHeadersViewModel, parse), null, 8));
            messageHeadersViewModel.messageHeaderLiveData = coroutineLiveData;
        }
        View findViewById = view.findViewById(R.id.message_headers_loading);
        findViewById.getClass();
        View findViewById2 = view.findViewById(R.id.message_headers_error);
        findViewById2.getClass();
        View findViewById3 = view.findViewById(R.id.message_headers_data);
        findViewById3.getClass();
        coroutineLiveData.observe(this, new LoaderStateObserver(findViewById, findViewById2, findViewById3, new AbstractMap$$ExternalSyntheticLambda0(this, materialTextView)));
    }
}
