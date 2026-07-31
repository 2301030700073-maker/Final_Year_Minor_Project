package org.wikipedia.views;

import android.content.Context;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.SearchView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.text.RegexKt;
import okhttp3.Cache;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lorg/wikipedia/views/CabSearchView;", "Landroidx/appcompat/widget/SearchView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "color", "", "setSearchHintTextColor", "(I)V", "", "searchString", "setCloseButtonVisibility", "(Ljava/lang/String;)V", "Landroid/view/View$OnClickListener;", "listener", "setCloseButtonClickListener", "(Landroid/view/View$OnClickListener;)V", "PlainTextInputFilter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CabSearchView extends SearchView {
    public final ImageView searchCloseBtn;
    public final SearchView.SearchAutoComplete searchSrcTextView;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlainTextInputFilter implements InputFilter {
        @Override // android.text.InputFilter
        public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            charSequence.getClass();
            spanned.getClass();
            SpannableString valueOf = SpannableString.valueOf(charSequence.toString());
            valueOf.getClass();
            if (charSequence instanceof Spanned) {
                Spanned spanned2 = (Spanned) charSequence;
                Object[] spans = spanned2.getSpans(i, i2, Object.class);
                spans.getClass();
                ArrayList arrayList = new ArrayList();
                for (Object obj : spans) {
                    if ((spanned2.getSpanFlags(obj) & 256) == 256) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    valueOf.setSpan(next, spanned2.getSpanStart(next), spanned2.getSpanEnd(next), spanned2.getSpanFlags(next));
                }
            }
            return valueOf.subSequence(i, i2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CabSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        Context context2 = getContext();
        context2.getClass();
        int themedColor = Cache.Companion.getThemedColor(context2, R.attr.placeholder_color);
        View findViewById = findViewById(R.id.search_src_text);
        findViewById.getClass();
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) findViewById;
        this.searchSrcTextView = searchAutoComplete;
        Context context3 = getContext();
        context3.getClass();
        searchAutoComplete.setTextColor(Cache.Companion.getThemedColor(context3, R.attr.primary_color));
        searchAutoComplete.setTextSize(2, 16.0f);
        searchAutoComplete.setHintTextColor(themedColor);
        View findViewById2 = findViewById(R.id.search_close_btn);
        findViewById2.getClass();
        ImageView imageView = (ImageView) findViewById2;
        this.searchCloseBtn = imageView;
        imageView.setVisibility(8);
        imageView.setColorFilter(themedColor);
        View view = new View[]{imageView}[0];
        RegexKt.setTooltipText(view, view.getContentDescription());
        InputFilter[] filters = searchAutoComplete.getFilters();
        filters.getClass();
        PlainTextInputFilter plainTextInputFilter = new PlainTextInputFilter();
        int length = filters.length;
        Object[] copyOf = Arrays.copyOf(filters, length + 1);
        copyOf[length] = plainTextInputFilter;
        searchAutoComplete.setFilters((InputFilter[]) copyOf);
    }

    public final void setCloseButtonClickListener(View.OnClickListener listener) {
        listener.getClass();
        this.searchCloseBtn.setOnClickListener(listener);
    }

    public final void setCloseButtonVisibility(String searchString) {
        boolean z = searchString == null || searchString.length() == 0;
        int i = z ? 8 : 0;
        ImageView imageView = this.searchCloseBtn;
        imageView.setVisibility(i);
        imageView.setImageResource(z ? 0 : R.drawable.ic_close_black_24dp);
        Context context = getContext();
        context.getClass();
        imageView.setImageTintList(Cache.Companion.getThemedColorStateList(context, R.attr.placeholder_color));
    }

    public final void setSearchHintTextColor(int color) {
        this.searchSrcTextView.setHintTextColor(color);
    }
}
