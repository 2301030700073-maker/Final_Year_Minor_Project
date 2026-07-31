package com.fsck.k9.ui.messagedetails;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.fsck.k9.view.MessageCryptoDisplayStatus;
import com.google.android.material.textview.MaterialTextView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CryptoStatusItem extends AbstractItem {
    public final CryptoDetails cryptoDetails;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ViewHolder extends FastAdapter.ViewHolder {
        public final MaterialTextView descriptionTextView;
        public final ImageView imageView;
        public final Drawable originalBackground;
        public final MaterialTextView titleTextView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            view.getClass();
            this.titleTextView = (MaterialTextView) view.findViewById(R.id.crypto_status_title);
            this.descriptionTextView = (MaterialTextView) view.findViewById(R.id.crypto_status_description);
            this.imageView = (ImageView) view.findViewById(R.id.crypto_status_icon);
            this.originalBackground = view.getBackground();
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void bindView(AbstractItem abstractItem, List list) {
            list.getClass();
            View view = this.itemView;
            Context context = view.getContext();
            CryptoDetails cryptoDetails = ((CryptoStatusItem) abstractItem).cryptoDetails;
            MessageCryptoDisplayStatus messageCryptoDisplayStatus = cryptoDetails.cryptoStatus;
            int i = messageCryptoDisplayStatus.statusIconRes;
            ImageView imageView = this.imageView;
            imageView.setImageResource(i);
            Resources.Theme theme = context.getTheme();
            theme.getClass();
            imageView.setImageTintList(ColorStateList.valueOf(MathKt.resolveColorAttribute(theme, messageCryptoDisplayStatus.colorAttr)));
            Integer num = messageCryptoDisplayStatus.titleTextRes;
            if (num != null) {
                this.titleTextView.setText(context.getString(num.intValue()));
            }
            Integer num2 = messageCryptoDisplayStatus.descriptionTextRes;
            if (num2 != null) {
                this.descriptionTextView.setText(context.getString(num2.intValue()));
            }
            if (cryptoDetails.isClickable) {
                view.setBackground(this.originalBackground);
            } else {
                view.setBackground(null);
            }
        }

        @Override // com.mikepenz.fastadapter.FastAdapter.ViewHolder
        public final void unbindView(AbstractItem abstractItem) {
            this.imageView.setImageDrawable(null);
            this.titleTextView.setText((CharSequence) null);
            this.descriptionTextView.setText((CharSequence) null);
        }
    }

    public CryptoStatusItem(CryptoDetails cryptoDetails) {
        cryptoDetails.getClass();
        this.cryptoDetails = cryptoDetails;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getLayoutRes() {
        return R.layout.message_details_crypto_status_item;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final int getType() {
        return R.id.message_details_crypto_status;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public final RecyclerView.ViewHolder getViewHolder(View view) {
        view.getClass();
        return new ViewHolder(view);
    }
}
