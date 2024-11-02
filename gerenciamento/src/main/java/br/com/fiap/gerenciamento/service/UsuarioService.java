package br.com.fiap.gerenciamento.service;

import br.com.fiap.gerenciamento.model.Usuario;
import br.com.fiap.gerenciamento.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario save(Usuario usuario) {

        String encodedPassword = new BCryptPasswordEncoder().encode(usuario.getPassword());
        usuario.setPassword(encodedPassword);

        return usuarioRepository.save(usuario);
    }
}
