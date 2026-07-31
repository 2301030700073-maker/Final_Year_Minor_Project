package org.wikipedia.edit;

import android.graphics.Rect;
import android.text.Editable;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.ViewModelKt;
import java.util.ArrayList;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okio.Okio__OkioKt;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.edit.richtext.SyntaxHighlighter$1$1;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.FindInPageActionProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FindInEditorActionProvider extends FindInPageActionProvider implements FindInPageActionProvider.FindInPageListener {
    public int currentResultIndex;
    public final ArrayList resultPositions;
    public final View scrollView;
    public String searchQuery;
    public final SyntaxHighlighter syntaxHighlighter;
    public final SyntaxHighlightableEditText textView;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FindInEditorActionProvider(android.view.View r1, org.wikipedia.edit.SyntaxHighlightableEditText r2, org.wikipedia.edit.richtext.SyntaxHighlighter r3, android.view.ActionMode r4) {
        /*
            r0 = this;
            r3.getClass()
            r4.getClass()
            android.content.Context r4 = r2.getContext()
            r4.getClass()
            r0.<init>(r4)
            r0.scrollView = r1
            r0.textView = r2
            r0.syntaxHighlighter = r3
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r0.resultPositions = r1
            r0.listener = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.FindInEditorActionProvider.<init>(android.view.View, org.wikipedia.edit.SyntaxHighlightableEditText, org.wikipedia.edit.richtext.SyntaxHighlighter, android.view.ActionMode):void");
    }

    @Override // android.view.ActionProvider
    public final View onCreateActionView(MenuItem menuItem) {
        menuItem.getClass();
        View onCreateActionView = super.onCreateActionView(menuItem);
        onCreateActionView.getClass();
        Object tag = this.textView.getTag();
        if (tag != null) {
            Request.Builder builder = this._binding;
            builder.getClass();
            ((CabSearchView) builder.method).setQuery((String) tag, true);
            Object systemService = onCreateActionView.getContext().getSystemService("input_method");
            systemService.getClass();
            ((InputMethodManager) systemService).showSoftInput(onCreateActionView, 1);
        }
        return onCreateActionView;
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindNextClicked() {
        int i;
        if (this.currentResultIndex == this.resultPositions.size() - 1) {
            i = 0;
        } else {
            i = this.currentResultIndex + 1;
            this.currentResultIndex = i;
        }
        this.currentResultIndex = i;
        scrollToCurrentResult();
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindNextLongClicked() {
        this.currentResultIndex = this.resultPositions.size() - 1;
        scrollToCurrentResult();
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindPrevClicked() {
        int i;
        int i2 = this.currentResultIndex;
        if (i2 == 0) {
            i = this.resultPositions.size() - 1;
        } else {
            i = i2 - 1;
            this.currentResultIndex = i;
        }
        this.currentResultIndex = i;
        scrollToCurrentResult();
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onFindPrevLongClicked() {
        this.currentResultIndex = 0;
        scrollToCurrentResult();
    }

    @Override // org.wikipedia.views.FindInPageActionProvider.FindInPageListener
    public final void onSearchTextChanged(String str) {
        String str2 = null;
        if (str != null) {
            if (str.length() == 0) {
                str = null;
            }
            str2 = str;
        }
        this.searchQuery = str2;
        int i = 0;
        this.currentResultIndex = 0;
        ArrayList arrayList = this.resultPositions;
        arrayList.clear();
        String str3 = this.searchQuery;
        if (str3 != null) {
            Editable text = this.textView.getText();
            while (i >= 0 && i < text.length()) {
                i = StringsKt.indexOf(text, str3, i, true);
                if (i >= 0) {
                    arrayList.add(Integer.valueOf(i));
                    i += str3.length();
                }
            }
        }
        scrollToCurrentResult();
    }

    public final void scrollToCurrentResult() {
        Object obj;
        int i = this.currentResultIndex;
        ArrayList arrayList = this.resultPositions;
        setMatchesResults(i, arrayList.size());
        String str = this.searchQuery;
        if (str == null) {
            str = "";
        }
        int length = str.length();
        int i2 = this.currentResultIndex;
        if (i2 < 0 || i2 >= arrayList.size()) {
            obj = 0;
            length = 0;
        } else {
            obj = arrayList.get(i2);
        }
        int intValue = ((Number) obj).intValue();
        SyntaxHighlightableEditText syntaxHighlightableEditText = this.textView;
        syntaxHighlightableEditText.setSelection(intValue, intValue + length);
        Rect rect = new Rect();
        syntaxHighlightableEditText.getFocusedRect(rect);
        this.scrollView.scrollTo(0, rect.top - Okio__OkioKt.roundedDpToPx(32.0f));
        int i3 = this.currentResultIndex;
        SyntaxHighlighter syntaxHighlighter = this.syntaxHighlighter;
        syntaxHighlighter.searchQueryPositions = arrayList;
        syntaxHighlighter.searchQueryLength = length;
        syntaxHighlighter.searchQueryPositionIndex = i3;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(syntaxHighlighter.activity), null, null, new SyntaxHighlighter$1$1(syntaxHighlighter, null, 2), 3);
    }
}
