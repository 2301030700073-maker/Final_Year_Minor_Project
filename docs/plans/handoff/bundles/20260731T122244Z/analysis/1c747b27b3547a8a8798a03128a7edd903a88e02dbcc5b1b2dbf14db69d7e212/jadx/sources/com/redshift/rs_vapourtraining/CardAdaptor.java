package com.redshift.rs_vapourtraining;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.json.JSONException;

/* loaded from: classes5.dex */
public class CardAdaptor extends RecyclerView.Adapter<ViewHolder> {
    private ArrayList<CardModal> cardModalArrayList;
    private Context context;
    private OnItemsClickListener listener;

    public interface OnItemsClickListener {
        void onItemClick(CardModal cardModal) throws JSONException;
    }

    public CardAdaptor(ArrayList<CardModal> cardModalArrayList, Context context) {
        this.cardModalArrayList = cardModalArrayList;
        this.context = context;
    }

    public void setWhenClickListener(OnItemsClickListener listener) {
        this.listener = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.card_rc_item, parent, false);
        return new ViewHolder(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        final CardModal modal = this.cardModalArrayList.get(position);
        holder.cardName.setText(modal.getNameoncard());
        holder.cardNumber.setText(modal.getCardNummber());
        holder.expiryDate.setText(modal.getExpiryDate());
        holder.cardCVV.setText(modal.getCvv());
        holder.singleItemCardView.setOnClickListener(new View.OnClickListener() { // from class: com.redshift.rs_vapourtraining.CardAdaptor.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (CardAdaptor.this.listener != null) {
                    try {
                        CardAdaptor.this.listener.onItemClick(modal);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.cardModalArrayList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        private TextView cardCVV;
        private TextView cardName;
        private TextView cardNumber;
        private TextView expiryDate;
        public CardView singleItemCardView;

        public ViewHolder(View itemView) {
            super(itemView);
            this.cardName = (TextView) itemView.findViewById(R.id.card_name);
            this.cardNumber = (TextView) itemView.findViewById(R.id.card_nummber);
            this.expiryDate = (TextView) itemView.findViewById(R.id.Expire_date);
            this.cardCVV = (TextView) itemView.findViewById(R.id.card_cvv);
            this.singleItemCardView = (CardView) itemView.findViewById(R.id.singleItemCardView);
        }
    }
}
