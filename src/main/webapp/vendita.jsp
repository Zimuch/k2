<form action="Vendita" enctype="multipart/form-data" method="POST">
    <div class="user-details">
        <div class="input-box">
            <span class="details">Nome prodotto</span>
            <input type="text" name="nome" maxlength="50" placeholder="Inserire nome prodotto" autofocus required pattern="^[a-zA-Z0-9\s]+$"/>
        </div>
        <div class="input-box">
            <span class="details">Prezzo</span>
            <input type="number" step="0.01" name="prezzo" max="9999999" placeholder="Inserire prezzo" required/>
        </div>
        <div class="input-box">
            <span class="details">Spese di spedizione</span>
            <input type="number" step="0.01" name="spedizione" max="999" placeholder="Inserire spese di spedizione" required/>
        </div>
        <div class="input-box">
            <span class="details">Immagine</span>
            <input type="file" id="immagine" name="immagine" accept="image/png, image/gif, image/jpeg" required>
        </div>
        <div class="input-box">
            <span class="details">Tipologia</span>
            <select id="tipologia" name="tipologia" required>
                <option value="Action Figures">Action Figures</option>
                <option value="Gadget">Gadget</option>
                <option value="Arredamento Casa">Arredamento Casa</option>
            </select>
        </div>
        <div class="input-box">
            <span class="details">Tag</span>
            <select id="tag" name="tag" required>
                <option value="Manga/Anime">Manga/Anime</option>
                <option value="Film/Serie TV">Film/Serie TV</option>
                <option value="Videogiochi">Videogiochi</option>
                <option value="Originali">Originali</option>
            </select>
        </div>
        <div class="input-box">
            <span class="details">Descrizione</span>
            <textarea id="descrizione" name="descrizione" rows="4" cols="60" style="resize: none; width: 450px; height: 80px" required></textarea>
        </div>
    </div>
    <div class="button">
        <input type="submit" class="vendi" name="vendi" id="vendi" value="Vendi il prodotto" style="margin-bottom: 40px">
    </div>
</form>
