package com.redshift.rs_vapourtraining.ui.BuyCredits;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.volley.BuildConfig;
import com.redshift.rs_vapourtraining.CardAdaptor;
import com.redshift.rs_vapourtraining.CardModal;
import com.redshift.rs_vapourtraining.DBHandler;
import com.redshift.rs_vapourtraining.R;
import com.redshift.rs_vapourtraining.WebViewCredits;
import java.util.ArrayList;
import org.json.JSONException;

/* loaded from: classes7.dex */
public class BuyCreditsFragment extends Fragment {
    Button buycredit;
    private ArrayList<CardModal> cardModalArrayList;
    private RecyclerView cardRV;
    private CardAdaptor cardRVAdapter;
    private DBHandler dbHandler;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_credits, container, false);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getActivity());
        String userID = prefs.getString("userRS", BuildConfig.FLAVOR);
        this.cardModalArrayList = new ArrayList<>();
        DBHandler dBHandler = new DBHandler(getActivity());
        this.dbHandler = dBHandler;
        ArrayList<CardModal> card = dBHandler.getCard(userID);
        this.cardModalArrayList = card;
        if (card != null) {
            this.cardRVAdapter = new CardAdaptor(this.cardModalArrayList, getActivity());
            this.cardRV = (RecyclerView) root.findViewById(R.id.idRVCardsOwned);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 1, false);
            this.cardRV.setLayoutManager(linearLayoutManager);
            this.cardRV.setAdapter(this.cardRVAdapter);
            this.cardRVAdapter.setWhenClickListener(new CardAdaptor.OnItemsClickListener() { // from class: com.redshift.rs_vapourtraining.ui.BuyCredits.BuyCreditsFragment.1
                @Override // com.redshift.rs_vapourtraining.CardAdaptor.OnItemsClickListener
                public void onItemClick(CardModal rvCardModel) throws JSONException {
                    Intent intent = new Intent(BuyCreditsFragment.this.getContext(), (Class<?>) WebViewCredits.class);
                    intent.putExtra("cardName", rvCardModel.getNameoncard());
                    BuyCreditsFragment.this.startActivity(intent);
                }
            });
        }
        return root;
    }
}
