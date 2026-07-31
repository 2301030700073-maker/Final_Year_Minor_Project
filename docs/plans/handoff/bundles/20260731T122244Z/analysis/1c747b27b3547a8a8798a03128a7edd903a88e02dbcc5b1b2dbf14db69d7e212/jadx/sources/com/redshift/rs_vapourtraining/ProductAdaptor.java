package com.redshift.rs_vapourtraining;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import java.util.ArrayList;
import org.json.JSONException;

/* loaded from: classes5.dex */
public class ProductAdaptor extends RecyclerView.Adapter<ViewHolder> {
    private Context context;
    private OnItemsClickListener listener;
    private ArrayList<ProductModal> productModalArrayList;

    public interface OnItemsClickListener {
        void onItemClick(ProductModal productModal) throws JSONException;
    }

    public ProductAdaptor(ArrayList<ProductModal> productModalArrayList, Context context) {
        this.productModalArrayList = productModalArrayList;
        this.context = context;
    }

    public void setWhenClickListener(OnItemsClickListener listener) {
        this.listener = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.product_rv_item, parent, false);
        return new ViewHolder(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        final ProductModal modal = this.productModalArrayList.get(position);
        String url = modal.getproductURL();
        Glide.with(this.context).load(url).centerCrop().placeholder(R.drawable.ic_launcher_foreground).into(holder.productURLTV);
        holder.productNameTV.setText(modal.getproductName());
        holder.productDescTV.setText(modal.getproductDescription());
        holder.productPriceTV.setText(modal.getproductPrice());
        holder.singleItemCardView.setOnClickListener(new View.OnClickListener() { // from class: com.redshift.rs_vapourtraining.ProductAdaptor.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (ProductAdaptor.this.listener != null) {
                    try {
                        ProductAdaptor.this.listener.onItemClick(modal);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.productModalArrayList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        private TextView productDescTV;
        private TextView productNameTV;
        private TextView productPriceTV;
        ImageView productURLTV;
        public CardView singleItemCardView;

        public ViewHolder(View itemView) {
            super(itemView);
            this.productNameTV = (TextView) itemView.findViewById(R.id.idproductNameTV);
            this.productDescTV = (TextView) itemView.findViewById(R.id.idproductDescTV);
            this.productURLTV = (ImageView) itemView.findViewById(R.id.idproductURLTV);
            this.productPriceTV = (TextView) itemView.findViewById(R.id.idproductPriceTV);
            this.singleItemCardView = (CardView) itemView.findViewById(R.id.singleItemCardView);
        }
    }
}
