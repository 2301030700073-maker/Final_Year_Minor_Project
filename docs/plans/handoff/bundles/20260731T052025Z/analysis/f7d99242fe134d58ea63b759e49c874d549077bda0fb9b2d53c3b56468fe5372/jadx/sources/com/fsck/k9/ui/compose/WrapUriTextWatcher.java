package com.fsck.k9.ui.compose;

import android.text.Editable;
import android.text.TextWatcher;
import com.fsck.k9.message.html.UriMatch;
import com.fsck.k9.message.html.UriMatcher;
import com.fsck.k9.message.html.UriParser;
import java.util.Locale;
import java.util.Map;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WrapUriTextWatcher implements TextWatcher {
    public int insertedStartIndex = -1;
    public int insertedEndIndex = -1;

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i = this.insertedStartIndex;
        int i2 = this.insertedEndIndex;
        if (editable == null || i == -1) {
            return;
        }
        CharSequence subSequence = editable.subSequence(i, i2);
        Map map = UriMatcher.SUPPORTED_URIS;
        subSequence.getClass();
        MatcherMatchResult matchAt = UriMatcher.URI_SCHEME.matchAt(0, subSequence);
        if (matchAt == null) {
            return;
        }
        MatchGroup matchGroup = matchAt.groups.get(1);
        matchGroup.getClass();
        if (matchGroup.range.first != 0) {
            return;
        }
        String lowerCase = matchGroup.value.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        UriParser uriParser = (UriParser) UriMatcher.SUPPORTED_URIS.get(lowerCase);
        if (uriParser == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Scheme not found: ".concat(lowerCase));
            return;
        }
        UriMatch parseUri = uriParser.parseUri(0, subSequence);
        if (parseUri != null && parseUri.startIndex == 0 && parseUri.endIndex == subSequence.length()) {
            editable.insert(i2, ">");
            editable.insert(i, "<");
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (charSequence == null || i3 < 2) {
            this.insertedStartIndex = -1;
        } else {
            this.insertedStartIndex = i;
            this.insertedEndIndex = i + i3;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
