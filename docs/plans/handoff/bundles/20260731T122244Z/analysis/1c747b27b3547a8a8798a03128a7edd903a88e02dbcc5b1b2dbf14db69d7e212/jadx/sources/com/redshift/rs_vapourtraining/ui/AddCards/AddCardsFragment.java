package com.redshift.rs_vapourtraining.ui.AddCards;

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
import com.redshift.rs_vapourtraining.AddCard;
import com.redshift.rs_vapourtraining.CardAdaptor;
import com.redshift.rs_vapourtraining.CardModal;
import com.redshift.rs_vapourtraining.DBHandler;
import com.redshift.rs_vapourtraining.R;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class AddCardsFragment extends Fragment implements View.OnClickListener {
    Button addCard;
    private ArrayList<CardModal> cardModalArrayList;
    private RecyclerView cardRV;
    private CardAdaptor cardRVAdapter;
    private DBHandler dbHandler;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_cards, container, false);
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
        }
        Button button = (Button) root.findViewById(R.id.add_card);
        this.addCard = button;
        button.setOnClickListener(this);
        return root;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.add_card /* 2131230796 */:
                Intent intent = new Intent(getContext(), (Class<?>) AddCard.class);
                startActivity(intent);
                break;
        }
    }
}
